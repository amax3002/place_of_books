require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_url
    assert_response :success
  end

  test "can show a form for a new book" do
    get "/books/new"
    assert_response :success
  end

  test "can create a book" do
    post "/books", params: { book: {name: "Rescue Party"} }
    assert_response :redirect

    assert_equal Book.last.name, "Rescue Party"
  end
end
