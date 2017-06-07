Rails.application.routes.draw do
  get 'patients/zorgvragers/new' => 'users#register_new', as: :new_user_signed_in
  post 'patients/zorgvragers' => 'users#create_new', as: :create_new_user_signed_in
  get 'patients/zorgvragers'

  get 'exercises/oefeningen'
  get 'exercises/show'
  get 'exercises/new'

  get 'patients/show'
  get 'patients/showrecordings'
  get 'patients/showexercises'
  get 'patients/showpatterns'
  get 'patients/new'

  devise_for :users
  devise_for :views
  get 'home/index'
  get 'home/settings'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
  root to: "home#index"
end
