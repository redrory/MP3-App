require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Mp3app
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

    AWS::S3::Base.establish_connection!(
      :access_key_id     => 'AKIAJ2WYUVHS6NWVK7PA',
      :secret_access_key => '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'
    )

    #APP_CONFIG['s3bucket'] = 'rorymusicapp'
    #BUCKET = 'rorymusicapp'
  end
end
