class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :chapter, index: true, foreign_key: true
      t.integer :position
      t.integer :actable_id
      t.string :actable_type

      t.timestamps null: false
    end
  end
end
