DunsonBrewing::Application.routes.draw do
  root 'welcome#index'

  get 'admin', to: 'admin#index'
  namespace :admin do
    resources :users
    resources :posts
  end

  devise_for :users, skip: [:registrations]
  as :user do
    get 'profile/edit', to: 'devise/registrations#edit', as: 'edit_user_registration'
    put 'profile', to: 'devise/registrations#update', as: 'user_registration'
  end
  get 'profile/:id', to: 'users#profile', as: 'profile'
  get 'profile', to: 'users#profile'
end
