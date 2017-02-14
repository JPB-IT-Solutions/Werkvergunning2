class RemoveColumnFromEnquiry < ActiveRecord::Migration
  def change
    remove_column :enquiries, :users_id
  end
end
