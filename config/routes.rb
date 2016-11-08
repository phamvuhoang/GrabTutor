Rails.application.routes.draw do
  
  resources :lessions
  resources :countries do
    resources :cities
  end
  
  resources :users do
    resources :subjects
    resources :lessions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
