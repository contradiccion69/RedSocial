Rails.application.routes.draw do
  # Routing with Devise
  devise_for :users
    # when the user within authenticate
  unauthenticated :user do
    devise_scope :user do
      root 'home#start', as: :start_root
    end
  end
    #When the user is authenticate
  authenticate :user do
    root 'home#index', as: :index_root
  end
end
