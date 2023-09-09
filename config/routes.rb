Rails.application.routes.draw do
  
  devise_for :users
  
get 'fashions/fashion' => 'fashions#fashion'
get 'fashions/word' => 'fashions#word'
get 'fashions/news' => 'fashions#news'
get 'fashions/food' => 'fashions#food'
get 'fashions/music' => 'fashions#music'
get 'fashions/movie' => 'fashions#movie'
get 'fashions/things' => 'fashions#things'
get 'fashions/others' => 'fashions#others'
get 'users/index' => 'users#index'


resources :fashions do
  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create]
end
root 'users#index'
end
