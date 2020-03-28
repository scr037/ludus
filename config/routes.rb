Rails.application.routes.draw do
  get 'welcome/index'

  resources :fighters
  resources :categories
  resources :genders
  resources :martial_arts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
