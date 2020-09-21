Rails.application.routes.draw do
  # get 'posts/new'

  # get 'posts/create'

  # get 'posts/edit'

  # get 'posts/update'

  # get 'posts/show'

  # get 'destinations/show'

  # get 'bloggers/new'

  # get 'bloggers/create'

  # get 'bloggers/show'

  # get 'bloggers/edit'

  # get 'bloggers/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, :posts ,  only: [:new, :create, :edit, :update, :show]
  resources :destinations, only:[:show]
end
