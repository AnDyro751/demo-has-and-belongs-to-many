require 'test_helper'

class DistributionCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distribution_center = distribution_centers(:one)
  end

  test "should get index" do
    get distribution_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_distribution_center_url
    assert_response :success
  end

  test "should create distribution_center" do
    assert_difference('DistributionCenter.count') do
      post distribution_centers_url, params: { distribution_center: { description: @distribution_center.description, name: @distribution_center.name } }
    end

    assert_redirected_to distribution_center_url(DistributionCenter.last)
  end

  test "should show distribution_center" do
    get distribution_center_url(@distribution_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_distribution_center_url(@distribution_center)
    assert_response :success
  end

  test "should update distribution_center" do
    patch distribution_center_url(@distribution_center), params: { distribution_center: { description: @distribution_center.description, name: @distribution_center.name } }
    assert_redirected_to distribution_center_url(@distribution_center)
  end

  test "should destroy distribution_center" do
    assert_difference('DistributionCenter.count', -1) do
      delete distribution_center_url(@distribution_center)
    end

    assert_redirected_to distribution_centers_url
  end
end
