require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url, as: :json
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { customer_id: @order.customer_id, employee_id: @order.employee_id, order_date: @order.order_date, order_status: @order.order_status, paid_date: @order.paid_date, payment_type: @order.payment_type, ship_address1: @order.ship_address1, ship_address2: @order.ship_address2, ship_city: @order.ship_city, ship_country: @order.ship_country, ship_name: @order.ship_name, ship_postal_code: @order.ship_postal_code, ship_state: @order.ship_state, shipped_date: @order.shipped_date, shipping_fee: @order.shipping_fee } }, as: :json
    end

    assert_response :created
  end

  test "should show order" do
    get order_url(@order), as: :json
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { customer_id: @order.customer_id, employee_id: @order.employee_id, order_date: @order.order_date, order_status: @order.order_status, paid_date: @order.paid_date, payment_type: @order.payment_type, ship_address1: @order.ship_address1, ship_address2: @order.ship_address2, ship_city: @order.ship_city, ship_country: @order.ship_country, ship_name: @order.ship_name, ship_postal_code: @order.ship_postal_code, ship_state: @order.ship_state, shipped_date: @order.shipped_date, shipping_fee: @order.shipping_fee } }, as: :json
    assert_response :success
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order), as: :json
    end

    assert_response :no_content
  end
end
