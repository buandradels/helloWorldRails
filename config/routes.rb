Rails.application.routes.draw do
  resources :maquinas
  root "maquinas#index"
  
  get "/maquinas", to:"maquinas#index"
  get "/maquinas/:id", to: "maquinas#show"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
