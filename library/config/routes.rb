Rails.application.routes.draw do
  get '/', controller: :books, action: :index, as: :index
  get '/books/new', controller: :books, action: :new
  post '/books', controller: :books, action: :create

  get '/books/:id', controller: :books, action: :detail, as: :detail

  get '/books/:id/edit', controller: :books, action: :edit, as: :edit_option
  patch '/books/:id', controller: :books, action: :update

  delete "/books/:id", controller: :books, action: :delete, as: :delete_book


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
