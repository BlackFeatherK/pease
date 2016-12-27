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

  accepts_nested_attributes_for :accounts , reject_if: proc { |attributes| attributes['bank'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :funerals
  accepts_nested_attributes_for :insurance_policies
  accepts_nested_attributes_for :jewelries
  accepts_nested_attributes_for :motors
  accepts_nested_attributes_for :pensions
  accepts_nested_attributes_for :private_shares
  accepts_nested_attributes_for :properties
  accepts_nested_attributes_for :stock_portfolios

end
