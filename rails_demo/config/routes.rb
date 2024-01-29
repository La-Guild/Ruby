Rails.application.routes.draw do
  root "risk#index"

  resources :risks do
    collection do
      get :show
    end
  end
end
