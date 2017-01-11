class Signature < ActiveRecord::Base
  belongs_to :enquiry
  has_many :representatives
end
