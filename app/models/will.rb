class Will < ApplicationRecord
  belongs_to :user , :optional => true
  belongs_to :car , :optional => true
end
