require 'test_helper'

class CashboxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashbox = cashboxes(:one)
  end

  test "should get index" do
    get cashboxes_url
    assert_response :success
  end

  test "should create cashbox" do
    assert_difference('Cashbox.count') do
      post cashboxes_url, params: { cashbox: {  } }
    end

    assert_response 201
  end

  test "should show cashbox" do
    get cashbox_url(@cashbox)
    assert_response :success
  end

  test "should update cashbox" do
    patch cashbox_url(@cashbox), params: { cashbox: {  } }
    assert_response 200
  end

  test "should destroy cashbox" do
    assert_difference('Cashbox.count', -1) do
      delete cashbox_url(@cashbox)
    end

    assert_response 204
  end
end
