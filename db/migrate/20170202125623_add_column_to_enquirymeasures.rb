class AddColumnToEnquirymeasures < ActiveRecord::Migration
  def change
    add_column :enquirymeasures, :other, :string
  end
end
