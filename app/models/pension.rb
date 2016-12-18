class Pension < ApplicationRecord
  belongs_to :will , :optional => true
end
