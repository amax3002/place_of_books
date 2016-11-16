Rails.application.routes.draw do
  # get 'books' => "books#index"
  resources :books do
    member do
      # single record
    end
    collection do
      # for all records
      post :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
