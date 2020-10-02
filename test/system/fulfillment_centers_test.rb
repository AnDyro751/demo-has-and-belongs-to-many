require "application_system_test_case"

class FulfillmentCentersTest < ApplicationSystemTestCase
  setup do
    @fulfillment_center = fulfillment_centers(:one)
  end

  test "visiting the index" do
    visit fulfillment_centers_url
    assert_selector "h1", text: "Fulfillment Centers"
  end

  test "creating a Fulfillment center" do
    visit fulfillment_centers_url
    click_on "New Fulfillment Center"

    fill_in "Description", with: @fulfillment_center.description
    fill_in "Name", with: @fulfillment_center.name
    click_on "Create Fulfillment center"

    assert_text "Fulfillment center was successfully created"
    click_on "Back"
  end

  test "updating a Fulfillment center" do
    visit fulfillment_centers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @fulfillment_center.description
    fill_in "Name", with: @fulfillment_center.name
    click_on "Update Fulfillment center"

    assert_text "Fulfillment center was successfully updated"
    click_on "Back"
  end

  test "destroying a Fulfillment center" do
    visit fulfillment_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fulfillment center was successfully destroyed"
  end
end
