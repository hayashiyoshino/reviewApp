Rails.application.routes.draw do
 resources :posts, only: [:index, :new, :create, :show]
 root 'top#index'
end
