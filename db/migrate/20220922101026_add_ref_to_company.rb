class AddRefToCompany < ActiveRecord::Migration[6.1]
  def change
    add_reference :companies, :country, foreign_key: true
    add_reference :companies, :state, foreign_key: true
    add_reference :companies, :city, foreign_key: true
  end
end
