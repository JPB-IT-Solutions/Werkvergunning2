class Enquirymeasure < ActiveRecord::Base
  belongs_to :enquiry
  belongs_to :measurement
end
