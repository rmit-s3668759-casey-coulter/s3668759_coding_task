class AddUtcIdToUtCs < ActiveRecord::Migration[5.2]
  def change
    add_column :utcs, :utc_id, :integer
  end
end
