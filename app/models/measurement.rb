class Measurement < ActiveRecord::Base
  belongs_to :enquirymeasure

  belongs_to :enquiry

  def type_and_measurement
    "#{self.measurementtype} |"  " #{self.measurement}"
  end
end
