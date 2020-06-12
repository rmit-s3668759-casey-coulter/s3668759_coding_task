class AddNameToZones < ActiveRecord::Migration[5.2]
  def change
    add_column :zones, :city_name, :text
  end
end
