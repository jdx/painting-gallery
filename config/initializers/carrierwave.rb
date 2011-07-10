CarrierWave.configure do |config|
  config.s3_access_key_id = ENV['S3_KEY']
  config.s3_secret_access_key = ENV['S3_SECRET']
  config.s3_bucket = 'painting_gallery'
end
