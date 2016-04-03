Rails.application.routes.draw do
  devise_for :chefs,:controllers => {registrations: 'registrations'}
  root 'welcome#home'

  get '/recipes', to: 'recipes#index', as: :recipes
  post '/recipes', to: 'recipes#create'
  get '/recipes/new' ,to: 'recipes#new', as: :new_recipe
  get '/recipe/:id', to: 'recipes#show', as: :recipe
end
