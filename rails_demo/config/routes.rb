Rails.application.routes.draw do
  root "risks#index"

  resources :risks do
    collection do
      get :show
    end
  end
end
