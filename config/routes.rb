Rails.application.routes.draw do
  root 'cocktails#index'


  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[create new]
  end
  resources :doses, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
