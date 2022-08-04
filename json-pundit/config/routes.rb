Rails.application.routes.draw do
  
  jsonapi_resources :users 
  jsonapi_resources :articles 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
