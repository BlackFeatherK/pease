class Account < ApplicationRecord
  belongs_to :will 
  has_many :heirs , :dependent => :destroy
  
  accepts_nested_attributes_for :heirs, reject_if: :all_blank, allow_destroy: true
end
