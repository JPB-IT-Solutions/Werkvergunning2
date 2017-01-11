class Enquiry < ActiveRecord::Base
  has_many :enquirymeasures, dependent: :destroy
  accepts_nested_attributes_for :enquirymeasures, :reject_if => lambda { |a| a[:responsible].blank? }, :allow_destroy => true


  has_many :tools, dependent: :destroy
  accepts_nested_attributes_for :tools

  has_many :controls, dependent: :destroy
  accepts_nested_attributes_for :controls

  has_one :applicant, dependent: :destroy
  accepts_nested_attributes_for :applicant

  has_one :contractor, through: :applicant


  has_many :signatures, dependent: :destroy
  accepts_nested_attributes_for :signatures
  has_many :representatives , through: :signatures, :source => :representatives



  has_many :gasmeters, dependent: :destroy
  accepts_nested_attributes_for :gasmeters

end
