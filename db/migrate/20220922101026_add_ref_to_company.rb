class AddRefToCompany < ActiveRecord::Migration[6.1]
  def change
    add_reference :companies, :country, null: false, foreign_key: true
    add_reference :companies, :state, null: false, foreign_key: true
    add_reference :companies, :city, null: false, foreign_key: true
  end
end
