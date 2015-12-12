class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.references :course, index: true, foreign_key: true
      t.integer :position

      t.timestamps null: false
    end
  end
end
