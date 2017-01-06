class Enquirymeasure < ActiveRecord::Base
  belongs_to :enquiry
  has_many :measurements
end
