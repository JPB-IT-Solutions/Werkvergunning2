class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.references :enquiry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
