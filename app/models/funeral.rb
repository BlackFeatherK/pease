class Funeral < ApplicationRecord
  belongs_to :will , :optional => true
  has_and_belongs_to_many :funeral_services
end
