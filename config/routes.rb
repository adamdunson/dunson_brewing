DunsonBrewing::Application.routes.draw do
  root 'welcome#index'

  get 'admin', to: 'admin#index'

  devise_for :users
  get 'profile/:id', to: 'users#profile', as: 'profile'
  get 'profile', to: 'users#profile'

  resources :posts
end
