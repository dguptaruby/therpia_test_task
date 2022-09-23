class AddFieldToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :monthly_charge, :decimal
    add_column :users, :start_date, :datetime
    add_column :users, :end_date, :datetime
    add_column :users, :is_active, :boolean
    add_column :users, :user_role, :string
    add_column :users, :notes, :text
  end
end
