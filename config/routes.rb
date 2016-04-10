Rails.application.routes.draw do
  devise_for :chefs,:controllers => {registrations: 'registrations'}
  root 'sessions#signup'

  get '/chefs/:id', to: 'chefs#show', as: :chef_profile
  get '/chefs', to: 'chefs#index', as: :chefs

  get '/recipes', to: 'recipes#index', as: :recipes
  post '/recipes', to: 'recipes#create'
  get '/recipes/new' ,to: 'recipes#new', as: :new_recipe
  get '/recipes/:id', to: 'recipes#show', as: :recipe
  get '/recipes/:id/edit', to: 'recipes#edit', as: :edit_recipe
  patch '/recipes/:id', to: 'recipes#update'
  delete '/recipes/:id', to: 'recipes#destroy', as: :delete_recipe

  post '/recipes/:recipe_id/reviews', to: 'reviews#create', as: :recipe_reviews
  get '/recipes/:recipe_id/reviews', to: 'reviews#index', as: :reviews

  get '/recipes/:id/publish', to: 'recipes#published', as: :publish_recipe
end
