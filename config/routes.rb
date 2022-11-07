Rails.application.routes.draw do
  resources :items
  resources :channels do
    member do
      post :fetch
    end
  end
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'items#index'
end
