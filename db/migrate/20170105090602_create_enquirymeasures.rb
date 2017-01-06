class CreateEnquirymeasures < ActiveRecord::Migration
  def change
    create_table :enquirymeasures do |t|
      t.string :done
      t.string :responsible
      t.string :needed
      t.references :enquiry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
