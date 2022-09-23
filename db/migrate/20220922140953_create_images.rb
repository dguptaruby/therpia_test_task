class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :real_name
      t.string :image_name

      t.timestamps
    end
  end
end
