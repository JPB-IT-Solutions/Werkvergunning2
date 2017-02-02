class AddColumnsToEnquirymeasures < ActiveRecord::Migration
  def change
    add_column :enquirymeasures, :measurementid, :integer
    add_column :enquirymeasures, :description, :string
    add_column :enquirymeasures, :type, :string
  end
end
