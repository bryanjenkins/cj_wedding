class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name, null: false
      t.integer :group_id, null:false
      t.boolean :coming

      t.timestamps
    end
  end
end
