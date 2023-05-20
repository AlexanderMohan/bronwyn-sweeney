Rails.application.routes.draw do
  devise_for :users
  scope '/admin' do
    resources :roles
    resources :users
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'public#index'
  get 'about', to: 'public#about'
end
