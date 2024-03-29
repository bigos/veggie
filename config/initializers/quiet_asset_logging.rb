# Silence the log file if it's loading up an asset.  That is, get rid of
# the following types of entries in the development log:
# 
# Started GET "/assets/application.css?body=1" for 127.0.0.1 at 2012-03-05 11:52:18 -0800
# Served asset /application.css - 200 OK (5ms)
#
Rails::Rack::Logger.class_eval do
  def call_with_quiet_assets(env)
    previous_level = Rails.logger.level
    Rails.logger.level = Logger::ERROR if env['PATH_INFO'].index("/assets/") == 0
    call_without_quiet_assets(env).tap do
      Rails.logger.level = previous_level
    end
  end
  alias_method_chain :call, :quiet_assets
end
