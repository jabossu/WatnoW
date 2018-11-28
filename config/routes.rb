Rails.application.routes.draw do
  
  resources :cards
  resources :users
  
  get 'pages/allcards'
  get 'about' => 'pages#about'
  get 'cards' => 'cards/cards'
  get 'allcards' => 'pages#allcards'

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'

  root 'pages#home' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
