Rails.application.routes.draw do
  resources :interactions
  resources :questions
  resources :associations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "asker", to: "asker#index"
  get "", to: "asker#index"
  post "asker", to: "asker#process_response"
end
