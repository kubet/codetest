Rails.application.routes.draw do
  use_doorkeeper
  resources :verticals
  resources :categories
  resources :courses
end
