Rails.application.routes.draw do
  devise_for :users
  resources :comments, :only => [:destroy, :edit, :update]
  resources :pins do
    member do
      put 'like', to: "pins#upvote"
    end
    resources :comments , :only => [:create, :new]
  end

  root "pins#index"
end
