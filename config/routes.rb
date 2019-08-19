Rails.application.routes.draw do
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'event/show'
  get 'event/index'
  get 'event/new'
  get 'event/create'
  devise_for :users
	root "event#index"
 #  get 'events_controller/index'
 #  resources :events_controller
  resources :event
  resources :users 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
