class Enquirymeasure < ActiveRecord::Base
  belongs_to :enquiry
  has_many :measurements
  accepts_nested_attributes_for :measurements
end
