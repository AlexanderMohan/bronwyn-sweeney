Rails.application.routes.draw do
  resources :contacts, path: 'contact', only: [:new, :create]
  authenticate :user do
    mount Motor::Admin => '/admin'
  end

  devise_for :users, :skip => [:registrations] 
  as :user do
  get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
  put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'public#index'
  get 'about', to: 'public#about'
  get 'index', to: 'public#index'
  get 'events', to: 'public#events'

  # Define the contact route
  get 'contact', to: 'contacts#new', as: 'contact'
end
