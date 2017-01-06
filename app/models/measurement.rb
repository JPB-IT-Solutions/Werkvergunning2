class Measurement < ActiveRecord::Base
  belongs_to :enquirymeasure
  belongs_to :enquiry
end
