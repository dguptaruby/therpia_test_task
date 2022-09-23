class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :post_code
      t.datetime :startdate
      t.boolean :active

      t.timestamps
    end
  end
end
