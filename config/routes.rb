Rails.application.routes.draw do

  root to: 'public/homes#top'

  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }


  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    get 'homes/top'
  end

  scope module: :public do
    get 'homes/top'
    get 'homes/about' => 'homes#about',as: 'about'
    resources :users
    resource :user_omikujis, only: [:create]
    resources :omikujis, only: [:new, :show]
    resources :choices, only: [:new, :create, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
