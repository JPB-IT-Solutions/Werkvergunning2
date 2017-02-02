class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :enquiry_id, :string
  end
end
