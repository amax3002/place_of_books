require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_url
    assert_response :success
  end

  # test "can show a form for a new book" do
  #   get "/books/new"
  #   assert_response :success
  # end
end
