class InsurancePolicy < ApplicationRecord
  belongs_to :will , :optional => true
end
