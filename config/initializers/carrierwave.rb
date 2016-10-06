CarrierWave.configure do |config|
  config.fog_credentials = {
    # Configuration for Amazon S3
    provider:               'AWS',
    aws_access_key_id:      ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key:  ENV['AWS_SECRET_ACCESS_KEY'],
    region:                 'Ireland'
  }

  # For testing, upload files to local `tmp` folder.
  if Rails.env.test? || Rails.env.cucumber?
    config.storage              = :file
    config.enable_processing    = false
    config.root                 = "#{Rails.root}/tmp"
  else
    config.storage              = :fog
  end

  # To let CarrierWave work on heroku
  config.cache_dir        = "#{Rails.root}/tmp/uploads"

  config.fog_directory    = ENV['AWS_BUCKET_NAME']
  config.fog_public       = true
  #config.s3_access_policy = :public_read
  #config.fog_host         = "#{ENV['AWS_ASSET_URL']}/#{ENV['AWS_BUCKET_NAME']}"
end
