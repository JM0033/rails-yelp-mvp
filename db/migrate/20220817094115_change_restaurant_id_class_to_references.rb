class ChangeRestaurantIdClassToReferences < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :restaurant_id
    add_reference :reviews, :restaurant, index: true
  end
end
