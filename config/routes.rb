Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  post "/cocktails/:id/cocktail", to: "cocktails#create"
  delete "/cocktails/:id", to: "cocktails#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
