Rails.application.routes.draw do
  namespace :api do
    resources :libraries, only: [] do
      resources :books, only: [:index]
    end
  end
end