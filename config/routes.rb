DunsonBrewing::Application.routes.draw do
  root 'welcome#index'

  get 'admin', to: 'admin#index'
  namespace :admin do
    resources :beers
    resources :beer_styles
    resources :beer_style_categories
    resources :posts
    resources :users
  end

  devise_for :users, skip: [:registrations]
  as :user do
    get 'profile/edit', to: 'registrations#edit', as: 'edit_user_registration'
    put 'profile', to: 'registrations#update', as: 'user_registration'
  end
  get 'profile/:id', to: 'users#profile', as: 'profile'
  get 'profile', to: 'users#profile'

  get 'beer', to: 'welcome#beer'
  get 'who', to: 'welcome#who'
end
