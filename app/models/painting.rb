class Painting < ActiveRecord::Base
  validates :title, :presence => true
  validates :image, :presence => true
  has_attached_file :image,
    :styles => { :thumb => "100x100#" },
    :storage => :s3,
    :bucket => 'painting_gallery',
    :s3_credentials => S3_CREDENTIALS
end
