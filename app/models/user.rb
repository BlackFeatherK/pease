class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :will , :dependent => :destroy

  has_attached_file :audio
  validates_attachment_content_type :audio, content_type: /.*/
end
