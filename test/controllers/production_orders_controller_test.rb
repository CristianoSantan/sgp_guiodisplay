require "test_helper"

class ProductionOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_order = production_orders(:one)
  end

  test "should get index" do
    get production_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_production_order_url
    assert_response :success
  end

  test "should create production_order" do
    assert_difference("ProductionOrder.count") do
      post production_orders_url, params: { production_order: { end_date: @production_order.end_date, machine_id: @production_order.machine_id, order_id: @production_order.order_id, start_date: @production_order.start_date, status: @production_order.status } }
    end

    assert_redirected_to production_order_url(ProductionOrder.last)
  end

  test "should show production_order" do
    get production_order_url(@production_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_order_url(@production_order)
    assert_response :success
  end

  test "should update production_order" do
    patch production_order_url(@production_order), params: { production_order: { end_date: @production_order.end_date, machine_id: @production_order.machine_id, order_id: @production_order.order_id, start_date: @production_order.start_date, status: @production_order.status } }
    assert_redirected_to production_order_url(@production_order)
  end

  test "should destroy production_order" do
    assert_difference("ProductionOrder.count", -1) do
      delete production_order_url(@production_order)
    end

    assert_redirected_to production_orders_url
  end
end
