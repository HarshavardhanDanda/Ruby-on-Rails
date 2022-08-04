Rails.application.routes.draw do
  #resources :ads #, path: :advertisements
  # namespace :message do
  #   resources :messages
  # end
  # scope :message do
  #   resources :messages
  # end
  resources :inboxes do
  #  namespace :message do
    resources :messages, path: :msgs
 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
