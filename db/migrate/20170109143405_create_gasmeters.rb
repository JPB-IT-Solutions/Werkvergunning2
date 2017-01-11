class CreateGasmeters < ActiveRecord::Migration
  def change
    create_table :gasmeters do |t|
      t.datetime :date
      t.string :tester
      t.string :signature
      t.string :oxigen
      t.boolean :o_needed
      t.boolean :o_continu
      t.string :explosives
      t.boolean :e_needed
      t.boolean :e_continu
      t.string :mat1
      t.boolean :mat1_needed
      t.boolean :mat1_continu
      t.string :mat2
      t.boolean :mat2_needed
      t.boolean :mat2_continu
      t.string :mat3
      t.boolean :mat3_needed
      t.boolean :mat3_continu

      t.timestamps null: false
    end
  end
end
