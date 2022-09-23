class CreateUserRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_regions do |t|

      t.timestamps
    end
  end
end
