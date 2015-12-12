class CreateExercices < ActiveRecord::Migration
  def change
    create_table :exercices do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
