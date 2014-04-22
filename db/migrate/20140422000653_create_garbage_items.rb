class CreateGarbageItems < ActiveRecord::Migration
  def change
    create_table :garbage_items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :sold, :default => false
    end
  end
end
