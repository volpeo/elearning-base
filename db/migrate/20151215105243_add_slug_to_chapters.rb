class AddSlugToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :slug, :string
    add_index :chapters, :slug, unique: true
  end
end
