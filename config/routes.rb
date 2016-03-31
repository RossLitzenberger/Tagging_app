Rails.application.routes.draw do
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

  resources :authors
  resources :articles do
    resources :comments
  end
  resources :tags
  root to: 'articles#index'
end
