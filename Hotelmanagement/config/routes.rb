Rails.application.routes.draw do
  resources :rooms
  resources :hotels, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
