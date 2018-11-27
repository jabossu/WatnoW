Rails.application.routes.draw do
  get 'pages/allcards'
  resources :cards
  
  get 'about' => 'pages#about'
  get 'cards' => 'cards/cards'
  get 'allcards' => 'pages#allcards'

  root 'pages#home' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
