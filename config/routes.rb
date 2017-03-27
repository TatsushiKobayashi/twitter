Rails.application.routes.draw do
  get 'top/index'

   resources :tweets, only: [:index, :new, :create, :edit, :update, :destroy]do
    collection do
      post :confirm
    end
  end
  
  root 'top#index'

end
