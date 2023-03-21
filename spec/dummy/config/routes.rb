Rails.application.routes.draw do
  mount Rubypress::Engine => "/rubypress", as: "admin"
  root to: "welcome#index"
end
