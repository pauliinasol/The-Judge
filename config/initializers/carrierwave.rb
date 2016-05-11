CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    # aws_access_key_id:     ENV['s3_key'],                        # required
    # aws_secret_access_key: ENV['s3_s_key'],                        # required
    # region:                'us-west-2',                  # optional, defaults to 'us-east-1'
    # host:                  's3.amazon.aws.com',             # optional, defaults to nil
    # endpoint:              's3-us-west-2.amazonaws.com' # optional, defaults to nil
  }
  config.storage = :fog
  config.fog_directory  = 'thejudge'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  # config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end
