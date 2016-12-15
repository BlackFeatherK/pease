class Account < ApplicationRecord
  belongs_to :will , :optional => true
end
