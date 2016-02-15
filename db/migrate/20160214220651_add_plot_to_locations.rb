class AddPlotToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :plot, :text
  end
end
