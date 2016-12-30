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
  has_many :medicals, :dependent => :destroy
  has_many :others , :dependent => :destroy
  has_many :last_words, :dependent => :destroy 

  accepts_nested_attributes_for :accounts , reject_if: proc { |attributes| attributes['bank'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :funerals, reject_if: proc {|attributes| attributes["preference"].blank? }, allow_destroy: true
  accepts_nested_attributes_for :insurance_policies
  accepts_nested_attributes_for :jewelries , reject_if: proc { |attributes| attributes['description'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :motors , reject_if: proc { |attributes| attributes['number'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :pensions
  accepts_nested_attributes_for :private_shares
  accepts_nested_attributes_for :properties , reject_if: proc { |attributes| attributes['number'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :stock_portfolios , reject_if: proc { |attributes| attributes['bank'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :others , reject_if: proc { |attributes| attributes['description'].blank? }, allow_destroy: true

end
