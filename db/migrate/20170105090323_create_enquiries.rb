class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :reference
      t.string :location
      t.text :description
      t.integer :amount
      t.datetime :date

      t.timestamps null: false
    end
  end
end
