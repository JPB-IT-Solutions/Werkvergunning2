class AddColumnToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :pin, :integer
  end
end
