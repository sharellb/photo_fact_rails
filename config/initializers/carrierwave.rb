CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['s3_access_key_id'],                        # required
    :aws_secret_access_key  => ENV['s3_secret_access_key'],                     # required
    :region                 => 'us-east-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'photofact'                             # required                                 # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end