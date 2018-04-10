Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contactgit

  get 'musics', to: 'musics#index'
  post 'musics', to: 'musics#create'
  get 'musics/:id', to: 'musics#show'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
