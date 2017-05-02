Rails.application.routes.draw do

  resources :contacts
  devise_for :users 

resources :user do
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#home"
end
