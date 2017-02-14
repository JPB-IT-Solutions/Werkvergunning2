class AddColumnToApplicant2 < ActiveRecord::Migration
  def change
    add_column :applicants, :company, :string
  end
end
