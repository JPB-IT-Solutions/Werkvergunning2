class AddColumn2ToEnquiry < ActiveRecord::Migration
  def change
    add_column :enquiries, :status, :string
  end
end
