Rails.application.routes.draw do
  
  root 'pages#home' 

  resources :cards
  resources :users
  
  get 'pages/allcards'
  get 'about' => 'pages#about'
  get 'cards' => 'cards#cards'
  get 'allcards' => 'pages#allcards'
  get 'usercards' => 'cards#user_cards'

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
