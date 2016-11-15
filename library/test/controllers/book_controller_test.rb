require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_url
    assert_response :success
  end

  test "can show a form for a new book" do
    get "/books/new"
    assert_response :success
  end
end
