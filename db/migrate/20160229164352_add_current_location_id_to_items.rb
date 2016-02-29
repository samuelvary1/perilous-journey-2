class AddCurrentLocationIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :current_location_id, :integer
  end
end
