module Deviseauth
  class Engine < ::Rails::Engine
    isolate_namespace Deviseauth
    engine_name 'deviseauth'
    config.deviseauth = ActiveSupport::OrderedOptions.new
    config.generators do |g|
      g.test_framework :rspec
    end 
    
    initializer 'deviseauth.new_routes' do |app|
      app.routes.prepend do
        mount Deviseauth::Engine => '/deviseauth'
      end
    end
   
   # middleware.use Devise::JWT::Middleware::RevocationManager
  end
end
