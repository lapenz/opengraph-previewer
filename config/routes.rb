Rails.application.routes.draw do
  resources :previews, :except => [:edit]
  root 'previews#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
