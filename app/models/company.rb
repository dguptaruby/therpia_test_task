class Company < ApplicationRecord
	has_many :places, dependent: :destroy
	belongs_to :city
	belongs_to :state
	belongs_to :country
end
