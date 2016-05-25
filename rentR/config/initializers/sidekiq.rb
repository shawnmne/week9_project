Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDISTOGO_URL'] || 'redis://localhost:6379/5' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDISTOGO_URL'] || 'redis://localhost:6379/5' }
  config.redis = { size: 1}
end

