class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :email
      t.references :applicant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
