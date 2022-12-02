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
    root to: 'homes#top'
    get 'homes/top'
    resources :omikujis, except: [:new, :index]
  end

  scope module: :public do
    get 'homes/top'
    get 'homes/about' => 'homes#about', as: 'about'
    resources :users
    resource :user_omikujis, only: [:create]
    resources :omikujis, only: [:new, :show]
    get 'choices/easy' => 'choices#easy', as: 'easy'
    get 'choices/nomal' => 'choices#nomal', as: 'nomal'
    get 'choices/hard' => 'choices#hard', as: 'hard'
    post 'choices/choice' => 'choices#choice', as: 'choice'
    get 'choices/result' => 'choices#result', as: 'result'
    resources :choices, only: [:new, :create, :show]
    resources :bingos, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
