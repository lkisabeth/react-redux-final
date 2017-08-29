Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sticky_notes
    end
  end
end
