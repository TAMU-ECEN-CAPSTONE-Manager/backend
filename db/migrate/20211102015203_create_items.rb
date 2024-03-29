class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.integer :quantity
      t.integer :inInventory
      t.text :description

      t.timestamps
    end
  end
end
