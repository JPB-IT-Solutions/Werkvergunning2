class DropTableContractors < ActiveRecord::Migration
  def change
    remove_reference(:applicants, :contractor, index: true, foreign_key: true)
    drop_table :contractors
  end

end
