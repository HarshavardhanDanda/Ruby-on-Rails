Rails.application.routes.draw do
  # get 'documents/index'
  # get 'documents/show'
  devise_for :users
  root 'documents#index'
  resources :documents, only: [:show, :edit , :update]
  get '/documents' => redirect('/')
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
