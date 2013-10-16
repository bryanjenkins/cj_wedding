class ChangeRequiredFieldsInGroups < ActiveRecord::Migration
  def change
    change_column :groups, :email, :string, :null => true
    change_column :groups, :random_group_id, :integer, :null => false
  end
end
