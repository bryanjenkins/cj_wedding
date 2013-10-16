class RemoveContactIdFromGroups < ActiveRecord::Migration
  def up
    remove_column :groups, :contact_id, :integer
  end

  def down
    add_column :groups, :contact_id, :integer, null: false
  end
end
