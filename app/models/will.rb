class Will < ApplicationRecord
  belongs_to :user , :optional => true
  has_many :account , :dependent => :destroy
  has_many :funeral , :dependent => :destroy
  has_many :insurance_policy , :dependent => :destroy
  has_many :jewelry , :dependent => :destroy
  has_many :motor , :dependent => :destroy
  has_many :pension , :dependent => :destroy
  has_many :private_share , :dependent => :destroy
  has_many :property , :dependent => :destroy
  has_many :stock_portfolio , :dependent => :destroy

end
