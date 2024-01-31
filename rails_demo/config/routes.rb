Rails.application.routes.draw do
  root "risks#index"

  get '/risks/start', to: 'risks#show'
end
