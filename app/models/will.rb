class Will < ApplicationRecord
  belongs_to :user , :optional => true
  has_many :accounts , :dependent => :destroy
  has_many :funerals , :dependent => :destroy
  has_many :insurance_policies , :dependent => :destroy
  has_many :jewelries , :dependent => :destroy
  has_many :motors , :dependent => :destroy
  has_many :pensions , :dependent => :destroy
  has_many :private_shares , :dependent => :destroy
  has_many :properties , :dependent => :destroy
  has_many :stock_portfolios , :dependent => :destroy
  has_many :digital_assets, :dependent => :destroy

end
