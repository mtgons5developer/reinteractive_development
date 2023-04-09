Sentry.init do |config|
    config.dsn = 'https://81efa2c2f0ef4fecaad9949ab1bcb08a@o4504985544294400.ingest.sentry.io/4504985545474048'
    config.breadcrumbs_logger = [:active_support_logger, :http_logger]
  
    # Set traces_sample_rate to 1.0 to capture 100%
    # of transactions for performance monitoring.
    # We recommend adjusting this value in production.
    config.traces_sample_rate = 1.0
    # or
    config.traces_sampler = lambda do |context|
      true
    end
  end