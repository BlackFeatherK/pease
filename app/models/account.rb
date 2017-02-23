class Account < ApplicationRecord
  belongs_to :will 
  has_many :heirs , as: :heirtable, :dependent => :destroy
  
  accepts_nested_attributes_for :heirs,
                                reject_if: proc { |attributes| attributes['name'].blank? },
                                allow_destroy: true

end
