class CreateUtcs < ActiveRecord::Migration[5.2]
  def change
    create_table :utcs do |t|
      t.text :country
      t.text :city

      t.timestamps
    end
  end
end
