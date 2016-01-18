require 'test_helper'

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_item = line_items(:one)
  end

  test "should get index" do
    get line_items_url
    assert_response :success
  end

  test "should create line_item" do
    assert_difference('LineItem.count') do
      post line_items_url, params: { line_item: { amount: @line_item.amount, book_id: @line_item.book_id, charged_at: @line_item.charged_at, receipt_url: @line_item.receipt_url } }
    end

    assert_response 201
  end

  test "should show line_item" do
    get line_item_url(@line_item)
    assert_response :success
  end

  test "should update line_item" do
    patch line_item_url(@line_item), params: { line_item: { amount: @line_item.amount, book_id: @line_item.book_id, charged_at: @line_item.charged_at, receipt_url: @line_item.receipt_url } }
    assert_response 200
  end

  test "should destroy line_item" do
    assert_difference('LineItem.count', -1) do
      delete line_item_url(@line_item)
    end

    assert_response 204
  end
end
