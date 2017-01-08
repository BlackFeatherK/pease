class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :will , :dependent => :destroy

  def amount_question
    amount = 0
    amount += self.funeral ? 0 : 1
    amount += self.medical ? 0 : 1
    amount += self.tangible_asset ? 0 : 1
    amount += self.digital ? 0 : 1
    # amount += self.medical ? 0 : 1
  end

end
