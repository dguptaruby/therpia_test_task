class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  USER_ROLES = {
    'normal_user': 'normal_user',
    'manager': 'manager',
    'admin': 'admin'
  }.freeze
  enum user_role: USER_ROLES
  has_rich_text :notes

  has_many :user_regions, dependent: :destroy
  has_one :image
  validates :start_date, :end_date, presence: true
  validate :end_date_is_after_start_date
  accepts_nested_attributes_for :image

  def is_normal_user?
    user_role == 'normal_user'
  end

  def is_manager?
    user_role == 'manager'
  end

  def is_admin?
    user_role == 'admin'
  end

#######
private
#######

def end_date_is_after_start_date
  return if end_date.blank? || start_date.blank?
  if end_date < start_date
    errors.add(:end_date, "cannot be before the start date") 
  end 
end
end
