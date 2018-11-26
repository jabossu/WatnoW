Rails.application.routes.draw do
  resources :cards
  
  get 'about' => 'pages#about'
  get 'cards' => 'cards/cards'

  root 'pages#home' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
