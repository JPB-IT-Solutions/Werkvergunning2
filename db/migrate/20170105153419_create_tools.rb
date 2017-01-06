class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :handtool
      t.string :equipment
      t.string :other
      t.references :enquiry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
