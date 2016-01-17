require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { cashbox_id: @book.cashbox_id, opened_at: @book.opened_at, closed_at: @book.closed_at, opening_balance: @book.opening_balance, total: @book.total } }
    end

    assert_response 201
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { cashbox_id: @book.cashbox_id, opened_at: @book.opened_at, closed_at: @book.closed_at, opening_balance: @book.opening_balance, total: @book.total } }
    assert_response 200
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_response 204
  end
end
