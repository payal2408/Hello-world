Rails.application.routes.draw do

  resources :demos
  resources :uses
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root "articles#index"
  resources :"articles" do
  	resources :"comments"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
