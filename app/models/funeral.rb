class Funeral < ApplicationRecord
  belongs_to :will , :optional => true
  has_many :funeral_services
end
