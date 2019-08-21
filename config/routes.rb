Rails.application.routes.draw do
  # get 'participations/show'
  # get 'participations/index'
  # get 'participations/new'
  # get 'participations/create'
  # get 'participations/edit'
  # get 'participations/update'
  # get 'participations/destroy'
  # get 'users/create'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  # get 'event/show'
  # get 'event/index'
  # get 'event/new'
  # get 'event/create'
  devise_for :users
  resources :users
	root "event#index"
 #  get 'events_controller/index'
 #  resources :events_controller
  resources :event
  resources :event do
    resources :participations
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
