Rails.application.routes.draw do

  # Static pages
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  # Create une musique
  get 'musics/new', to: 'musics#new'
  post 'musics', to: 'musics#create'

  # Read toutes les musiques
  get 'musics', to: 'musics#index'
  # Read une musique
  get 'musics/:id', to: 'musics#show', as: :music

  # Update une musique
  get 'musics/:id/edit', to: 'musics#edit'
  patch 'musics/:id', to: 'musics#update'

  # Delete une musique
  delete 'musics/:id', to: 'musics#destroy'

  # Homepage
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
