class RemoveSignatureFromRepresentatives < ActiveRecord::Migration
  def change
        remove_reference :representatives, :signatures
  end
end
