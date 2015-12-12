class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
