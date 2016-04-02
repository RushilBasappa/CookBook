Rails.application.routes.draw do
  devise_for :chefs,:controllers => {registrations: 'registrations'}
  root 'welcome#home'
end
