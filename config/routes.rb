Rails.application.routes.draw do
  resources :kids
  root to: "static#homepage"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
