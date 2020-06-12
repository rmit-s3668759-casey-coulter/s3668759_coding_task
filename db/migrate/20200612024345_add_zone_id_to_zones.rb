class AddZoneIdToZones < ActiveRecord::Migration[5.2]
  def change
    add_column :zones, :zone_id, :integer
  end
end
