class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.string :measurement
      t.string :type
      t.date :validfrom
      t.date :validtill
      t.references :enquirymeasure, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
