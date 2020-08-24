Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  get "my_activities", to: "plannings#my_activities", as: :my_activities

  resources :user_challenges, only: [:index, :edit, :create, :update]

  resources :activities, only: [:index, :show] do
    post "plannings", to: "plannings#create"
  end
  
end
