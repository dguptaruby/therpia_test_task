class CreateNodes < ActiveRecord::Migration[6.1]
  def change
    create_table :nodes do |t|
      t.string :node_name

      t.timestamps
    end
  end
end
