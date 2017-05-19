Rails.application.routes.draw do
  get 'patients/zorgvragers'

  get 'exercises/oefeningen'

  devise_for :users
  devise_for :u_sers
  devise_for :views
  get 'home/index'
  get 'home/settings'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
  root to: "home#index"
end
