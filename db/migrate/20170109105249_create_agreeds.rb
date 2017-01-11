class CreateAgreeds < ActiveRecord::Migration
  def change
    create_table :agreeds do |t|
      t.string :name
      t.datetime :date
      t.references :enquiry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
