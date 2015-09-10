ICS::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = false

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = true

  # Compress JavaScripts and CSS
  config.assets.compress = false

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true

  # Generate digests for assets URLs
  config.assets.digest = true

  # Defaults to nil and saved in location specified by config.assets.prefix
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  config.force_ssl = true

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Prepend all log lines with the following tags
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # config.assets.precompile += %w( search.js )

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  config.after_initialize do
    ActiveMerchant::Billing::Base.mode = :production
    authorize = {
      :login => '4f69MjPa',
      :password=> '53V6c7msw3f2WV43'
    }
    first_data = {
      :login => 'D84068-01',
      :password => '8205hng8n09b6mk417u59moa95966b5g'
    }
    stripe = {
      :login => 'sk_live_aryFpCesyzGR92IC9ri1SQNG'
    }
    ::AUTHORIZE = ActiveMerchant::Billing::AuthorizeNetGateway.new(authorize)
    ::FIRSTDATA = ActiveMerchant::Billing::FirstdataE4Gateway.new(first_data)
    ::STRIPE = ActiveMerchant::Billing::StripeGateway.new(stripe)
  end

  config.action_mailer.default_url_options = {:host => 'bluearchstore.com'}
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address              => "smtp.mandrillapp.com",
    :port                 => 587,
    #:domain               => 'baci.lindsaar.net',
    :user_name            => 'service.bluearchstore@gmail.com',
    :password             => 'cx--40b0ROd6MknLxhhhuQ',
    :authentication       => 'login',
    :enable_starttls_auto => true
  }

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # config.active_record.auto_explain_threshold_in_seconds = 0.5
end
SITE = 'bluearchstore.com'
