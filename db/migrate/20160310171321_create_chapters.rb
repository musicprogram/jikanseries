class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.belongs_to :season, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
