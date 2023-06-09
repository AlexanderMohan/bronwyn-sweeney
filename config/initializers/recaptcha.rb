# frozen_string_literal: true

if ENV['ASSET_PRECOMPILE'].blank?
  Recaptcha.configure do |config|
    config.site_key = Rails.application.credentials.recaptcha_v3[:site_key]
    config.secret_key = Rails.application.credentials.recaptcha_v3[:secret_key]

    # Uncomment the following line if you are using a proxy server:
    # config.proxy = 'http://myproxy.com.au:8080'

    # Uncomment the following lines if you are using the Enterprise API:
    # config.enterprise = true
    # config.enterprise_api_key = <key>
    # config.enterprise_project_id = 'my-project'
  end
end
