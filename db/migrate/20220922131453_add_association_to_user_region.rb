class AddAssociationToUserRegion < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_regions, :user, null: false, foreign_key: true 
    add_reference :user_regions, :region, null: false, foreign_key: true 
  end
end
