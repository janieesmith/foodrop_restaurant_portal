class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.integer :restaurant_id
      t.string :photo
      t.boolean :availability
      t.string :description
      t.string :menu_item_name

      t.timestamps

    end
  end
end
