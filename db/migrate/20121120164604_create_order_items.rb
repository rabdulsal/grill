class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :qty
      t.text :note

      t.timestamps
    end
    
    add_index :order_items, :order_id
    
  end
  
end
