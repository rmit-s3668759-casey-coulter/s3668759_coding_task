class CreateZones < ActiveRecord::Migration[5.2]
  def change
    create_table :zones do |t|
      t.text    :value
      t.text    :abbr
      t.float   :offset
      t.boolean :isdst
      t.text    :text

      t.timestamps
    end
  end
end
