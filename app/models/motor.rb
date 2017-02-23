class Motor < ApplicationRecord
  belongs_to :will
  has_many :heirs , as: :heirtable, :dependent => :destroy

  accepts_nested_attributes_for :heirs
end
