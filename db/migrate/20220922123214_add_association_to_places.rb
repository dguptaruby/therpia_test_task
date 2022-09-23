class AddAssociationToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_reference :places, :company, null: false, foreign_key: true  
    add_reference :nodes, :place, null: false, foreign_key: true
  end
end
