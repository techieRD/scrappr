class AddValueToItems < ActiveRecord::Migration
  def change
    add_column :items, :item_owner_id, :integer
  end
end
