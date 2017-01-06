class Enquiry < ActiveRecord::Base
  has_many :enquirymeasures
  accepts_nested_attributes_for :enquirymeasures, :reject_if => lambda { |a| a[:responsible].blank? }, :allow_destroy => true


  has_many :tools
  accepts_nested_attributes_for :tools

end
