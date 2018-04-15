Rails.application.routes.draw do

  # Static pages
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  # Homepage
  root to: 'musics#index'

  # Create une musique
  get 'musics/new', to: 'musics#new'
  post 'musics', to: 'musics#create'

  # Read toutes les musiques
  # get 'musics', to: 'musics#index'
  # Read une musique
  get '/:id', to: 'musics#show', as: :music

  # Update une musique
  get '/:id/edit', to: 'musics#edit', as: :edit_music
  patch '/:id', to: 'musics#update'

  # Delete une musique
  delete '/:id', to: 'musics#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
