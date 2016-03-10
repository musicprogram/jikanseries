class CreateSeriesTemps < ActiveRecord::Migration
  def change
    create_table :series_temps do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
