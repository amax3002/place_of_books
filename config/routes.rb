Rails.application.routes.draw do
  # get 'books' => "books#index"
  resources :books do
    member do
      get 'reservations'
      get 'reservations/new', action: :new_reservation
      post 'reservations', action: :create_reservation
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
      patch :return
    end
    collection do
      # for all records
    end
  end
end
