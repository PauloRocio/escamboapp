Rails.application.routes.draw do

  get 'backoffice', to: 'backoffice/dashboard#index'

  namespace :backoffice do
    get 'dashboard/index'
  end
  namespace :site do
    get 'home/index'
  end
  devise_for :admins
  devise_for :members

  root 'site/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
