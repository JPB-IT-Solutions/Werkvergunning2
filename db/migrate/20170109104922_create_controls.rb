class CreateControls < ActiveRecord::Migration
  def change
    create_table :controls do |t|

      t.boolean :enquirycheck
      t.boolean :workspacecheck
      t.references :enquiry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
