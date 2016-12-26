class Property < ApplicationRecord
  belongs_to :will 
  has_many :heirs , :dependent => :destroy
  
  accepts_nested_attributes_for :heirs
end
