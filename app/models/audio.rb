class Audio < ApplicationRecord
  belongs_to :will

  has_attached_file :video
  validates_attachment_content_type :video, content_type: /.*/
end
