class AddRepresentativeToSignature < ActiveRecord::Migration
  def change
    add_reference :signatures, :representative, index: true, foreign_key: true
  end

end
