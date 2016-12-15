class Car < ApplicationRecord
  has_one :will , :dependent => :destrory
end
