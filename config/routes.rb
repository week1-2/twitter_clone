Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'tweet/new'
  get 'tweet/destroy'

  root :to => "home#index"

  devise_scope :user do
  resources :users
  get 'main/:id', to: 'users#show', as: :main
  get 'profile/:id', to: 'registrations#edit', as: :profile
      
  end
end
