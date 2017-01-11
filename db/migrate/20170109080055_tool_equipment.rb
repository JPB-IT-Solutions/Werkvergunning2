class ToolEquipment < ActiveRecord::Migration
  def change
    change_table Tool do |t|
      t.boolean :motorvehicle, :default => false
      t.boolean :compressor, :default => false
      t.boolean :ramp, :default => false
      t.boolean :scaffold, :default => false
      t.boolean :crane, :default => false
      t.boolean :ladder, :default => false
      t.boolean :generator, :default => false
      t.boolean :tankladder, :default => false
    end
  end
end
