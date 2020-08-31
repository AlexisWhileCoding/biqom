Rails.application.routes.draw do
  patch "user_challenge/:id/validate", to: "user_challenges#validate", as: :validate_user_challenge
  get 'user_challenges/index'
  get 'user_challenges/edit'
  get 'plannings/my_activities'
  get 'activities/index'
  get 'activities/show'
  devise_for :users
  root to: 'pages#home'
  get "user_challenges/dashboard", to: "user_challenges#dashboard"
  get "my_activities", to: "plannings#my_activities", as: :my_activities

  resources :user_challenges, only: [:index, :edit, :create, :update]

  resources :activities, only: [:index, :show] do
    resources :plannings, only: [:create, :update]
  end
  
end
