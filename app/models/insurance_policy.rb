class InsurancePolicy < ApplicationRecord
  belongs_to :will
  has_many :heirs , as: :heirtable, :dependent => :destroy
end
