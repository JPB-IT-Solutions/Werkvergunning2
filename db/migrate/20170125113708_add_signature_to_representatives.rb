class AddSignatureToRepresentatives < ActiveRecord::Migration
  def change
    add_column :representatives, :signature, :string
  end
end
