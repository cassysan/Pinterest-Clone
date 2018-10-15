Rails.application.routes.draw do
  devise_for :users
  resources :comments, :only => [:destroy, :show, :edit, :update]
  resources :pins do
    member do
      put 'like', to: "pins#upvote"
    end
    resources :comments , :only => [:create, :index, :new]
  end

  root "pins#index"
end
