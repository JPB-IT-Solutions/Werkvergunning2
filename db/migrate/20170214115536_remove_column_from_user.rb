class RemoveColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :enquiry_id
  end
end
