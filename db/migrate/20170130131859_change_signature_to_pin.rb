class ChangeSignatureToPin < ActiveRecord::Migration
  def change
    remove_column(:signatures, :signature)

    add_column(:signatures, :pin, :integer)
  end
end
