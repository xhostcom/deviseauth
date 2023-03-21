require_relative "lib/deviseauth/version"

Gem::Specification.new do |s|
s.name        = "deviseauth"
s.version     = Deviseauth::VERSION
s.authors     = ["Paul Anthony McGowan"]
s.email       = ["xhostcom@aol.com"] 
s.homepage    = "https://github.com/xhostcom/deviseauth"
s.summary     = "Deviseauth is a rails engine that provides a user authentication system for Rails 7 w JWT" 
s.description = "Deviseauth is a rails engine that provides a user authentication system for Rails 7 w JWT"
s.license     = "MIT"
s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\x0")
s.bindir      = "exe"
s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
s.require_paths = ["lib"]
s.add_dependency "rails", ">= 7.0.0"
s.add_dependency "devise", ">= 4.8.0"
s.add_dependency 'devise-jwt', '~> 0.9.0'
s.add_dependency 'rspec-rails', '~> 5.0.0'
end
