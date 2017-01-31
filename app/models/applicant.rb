class Applicant < ActiveRecord::Base
  belongs_to :enquiry
  has_one :contractor

end
