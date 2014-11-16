Rails.application.routes.draw do
  root to: "employments#index"
  resources :employments
end
