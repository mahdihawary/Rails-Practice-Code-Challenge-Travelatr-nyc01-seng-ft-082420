Rails.application.routes.draw do
  resources :bloggers, :posts ,  only: [:new, :create, :edit, :update, :show]
  resources :destinations, only:[:show]
  resources :likes
end
