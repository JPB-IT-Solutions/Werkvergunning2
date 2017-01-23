class AddColumnToEnquiry < ActiveRecord::Migration
  def change
    change_table :enquiries do |e|
      e.boolean :approved
    end
  end
end
