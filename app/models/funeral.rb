class Funeral < ApplicationRecord
  belongs_to :will , :optional => true
  has_many :funeral_service_options
  has_many :funeral_services, through: :funeral_service_options
  has_many :heirs , as: :heirtable, :dependent => :destroy
end
