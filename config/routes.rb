Rails.application.routes.draw do
  
  resources :briefs
  devise_for :coordinators
  devise_for :students
  
  get 'home/index'
  root 'home#index'

  resources :contacts
  resources :students
  resources :conclusions
  resources :coordinators
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
