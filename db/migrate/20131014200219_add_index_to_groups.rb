class AddIndexToGroups < ActiveRecord::Migration
  def change
    add_index :groups, :random_group_id
  end
end
