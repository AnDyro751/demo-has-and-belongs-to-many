require 'test_helper'

class FulfillmentCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fulfillment_center = fulfillment_centers(:one)
  end

  test "should get index" do
    get fulfillment_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_fulfillment_center_url
    assert_response :success
  end

  test "should create fulfillment_center" do
    assert_difference('FulfillmentCenter.count') do
      post fulfillment_centers_url, params: { fulfillment_center: { description: @fulfillment_center.description, name: @fulfillment_center.name } }
    end

    assert_redirected_to fulfillment_center_url(FulfillmentCenter.last)
  end

  test "should show fulfillment_center" do
    get fulfillment_center_url(@fulfillment_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_fulfillment_center_url(@fulfillment_center)
    assert_response :success
  end

  test "should update fulfillment_center" do
    patch fulfillment_center_url(@fulfillment_center), params: { fulfillment_center: { description: @fulfillment_center.description, name: @fulfillment_center.name } }
    assert_redirected_to fulfillment_center_url(@fulfillment_center)
  end

  test "should destroy fulfillment_center" do
    assert_difference('FulfillmentCenter.count', -1) do
      delete fulfillment_center_url(@fulfillment_center)
    end

    assert_redirected_to fulfillment_centers_url
  end
end
