Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  #2
  #get 'welcome/index'
  root 'welcome#index'

  resources :students


end
