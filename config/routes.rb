Rails.application.routes.draw do
  resources :employees
  resources :companies do
    resources :employees
  end

  root "companies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
