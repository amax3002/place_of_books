Rails.application.routes.draw do
  # get 'books' => "books#index"
  resources :books do
    member do
      get :reservations
    end
    collection do
      # for all records
    end
  end
  #
  # spacing rescources for formatting
  #
  resources :reservations do
    member do
      # single record
    end
    collection do
      # for all records
    end
  end
end
