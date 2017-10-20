require 'test_helper'

class OrderGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_group = order_groups(:one)
  end

  test "should get index" do
    get order_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_order_group_url
    assert_response :success
  end

  test "should create order_group" do
    assert_difference('OrderGroup.count') do
      post order_groups_url, params: { order_group: { order_date: @order_group.order_date, user_id: @order_group.user_id } }
    end

    assert_redirected_to order_group_url(OrderGroup.last)
  end

  test "should show order_group" do
    get order_group_url(@order_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_group_url(@order_group)
    assert_response :success
  end

  test "should update order_group" do
    patch order_group_url(@order_group), params: { order_group: { order_date: @order_group.order_date, user_id: @order_group.user_id } }
    assert_redirected_to order_group_url(@order_group)
  end

  test "should destroy order_group" do
    assert_difference('OrderGroup.count', -1) do
      delete order_group_url(@order_group)
    end

    assert_redirected_to order_groups_url
  end
end
