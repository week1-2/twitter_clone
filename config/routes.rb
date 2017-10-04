Rails.application.routes.draw do
  root :to => "home#index"

  get 'main/:id', to: 'users#show', as: :main
  get 'profile/:id', to: 'users#edit', as: :profile

  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
