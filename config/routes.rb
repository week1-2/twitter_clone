Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root :to => "home#index"

  devise_scope :user do
    resources :users do
      resources :tweets
    end

    get 'main/:id', to: 'users#show', as: :main #custom
    get 'profile/:id', to: 'registrations#edit', as: :profile #custom
  end
end
