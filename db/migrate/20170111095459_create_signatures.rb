class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.datetime :date
      t.string :signature
      t.references :enquiry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
