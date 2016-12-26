class Heir < ApplicationRecord

  belongs_to :account , :optional => true
  belongs_to :jewelry , :optional => true
  belongs_to :motor , :optional => true
  belongs_to :other , :optional => true
  belongs_to :property , :optional => true
  belongs_to :stock_portfolio , :optional => true
  belongs_to :funeral , :optional => true
  belongs_to :insurance_policy , :optional => true
  belongs_to :pension , :optional => true
  belongs_to :private_share , :optional => true
  
  delegate :name, :heir_type, :to => :property, :prefix => true, :allow_nil => true
end
