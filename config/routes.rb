Rails.application.routes.draw do

  root "home#index"

  namespace :api do
    namespace :v1 do

      resources :babies, only: [:index, :show] do
        get :activity_logs, on: :member
      end

      resources :activities
      resources :activity_logs
      resources :assistants
    end
  end
end
