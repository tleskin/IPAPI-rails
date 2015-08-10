Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes
      get '/types', to: 'recipes#types'
    end
  end
end
