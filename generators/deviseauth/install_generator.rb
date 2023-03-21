module Deviseauth
   class InstallGenerator < Rails::Generators::Base 
     source_root File.expand_path('../templates', __FILE__) 
     desc "This generator installs Deviseauth" 
     def install
     run 'bundle install'
     route "mount Deviseauth::Engine => '/deviseauth'
     rake 'deviseauth:install:migrations'
     rake 'db:migrate'
     end
   end
end