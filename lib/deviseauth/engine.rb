module Deviseauth
  class Engine < ::Rails::Engine
    isolate_namespace Deviseauth
    engine_name 'deviseauth'
    config.deviseauth = ActiveSupport::OrderedOptions.new
    config.generators do |g|
      g.test_framework :rspec
    end 
    
    initializer 'deviseauth.new_routes'
    :after => 'action_dispatch.prepare_dispatcher' do |app|
    ActionDispatch::Routing::Mapper.send :include, 
    Deviseauth::RouteExtensions 
    end
   # middleware.use Rack::Cache,
   # :verbose => true,
   # :metastore => "file:#{Rails.root}/tmp/dragonfly/cache/meta",
   # :entitystore => "file:#{Rails.root}/tmp/dragonfly/cache/body"
  end
end
