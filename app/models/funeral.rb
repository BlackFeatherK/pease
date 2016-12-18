class Funeral < ApplicationRecord
  belongs_to :will , :optional => true
end
