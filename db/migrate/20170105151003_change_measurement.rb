class ChangeMeasurement < ActiveRecord::Migration
  def change


    change_table :measurements do |t|
      t.rename :type, :measurementtype
    end

  end
end
