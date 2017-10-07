Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root :to => "home#index"

  devise_scope :user do
    resources :users do
      resources :follows, :only => [:create, :destroy]
      resources :tweets
    end
    
    #custom
    get 'main/:id', to: 'users#show', as: :main
    get 'profile/:id', to: 'registrations#edit', as: :profile
    get 'search', to: 'users#search', as: :search
    get 'main/:id/followers', to: 'users#followers', as: :followers
    get 'main/:id/following', to: 'users#show', as: :followings
  end
end
