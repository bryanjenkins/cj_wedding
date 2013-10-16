class AddRandomGroupdIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :random_group_id, :integer
  end
end
