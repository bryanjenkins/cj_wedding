class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :email, null: false
      t.integer :contact_id, null: false

      t.timestamps
    end
  end
end
