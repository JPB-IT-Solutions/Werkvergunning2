class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :name
      t.integer :telephone
      t.string :email
      t.references :signature, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
