class Measurement < ActiveRecord::Base
  has_many :enquiries, :through => :enquirymeasures
  has_many :enquirymeasures
end
