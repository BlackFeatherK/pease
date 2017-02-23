class Heir < ApplicationRecord

  belongs_to :heirtable, polymorphic: true, optional: true
  
  delegate :name, :heir_type, :to => :property_name, :prefix => true, :allow_nil => true

  # validates :name , :heir_type , :proportion , presence: true

end
