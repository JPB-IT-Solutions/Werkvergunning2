class AddContractorToApplicant < ActiveRecord::Migration
  def change
    add_reference :applicants, :contractor, index: true, foreign_key: true
  end
end
