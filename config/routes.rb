Rails.application.routes.draw do
  get 'static_pages/home'
  get '/static_pages/news'
  get 'static_pages/art_culture'
  get 'static_pages/cinema'
  get 'static_pages/music'
  get 'static_pages/about'
  get '/static_pages/:id', to: 'static_pages#show', as: "article"
  devise_for :users
  resources :posts
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
