class Chapter < ActiveRecord::Base
  belongs_to :season
  has_attached_file :imagen, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\Z/
end
