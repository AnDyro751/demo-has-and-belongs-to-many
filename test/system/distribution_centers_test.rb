require "application_system_test_case"

class DistributionCentersTest < ApplicationSystemTestCase
  setup do
    @distribution_center = distribution_centers(:one)
  end

  test "visiting the index" do
    visit distribution_centers_url
    assert_selector "h1", text: "Distribution Centers"
  end

  test "creating a Distribution center" do
    visit distribution_centers_url
    click_on "New Distribution Center"

    fill_in "Description", with: @distribution_center.description
    fill_in "Name", with: @distribution_center.name
    click_on "Create Distribution center"

    assert_text "Distribution center was successfully created"
    click_on "Back"
  end

  test "updating a Distribution center" do
    visit distribution_centers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @distribution_center.description
    fill_in "Name", with: @distribution_center.name
    click_on "Update Distribution center"

    assert_text "Distribution center was successfully updated"
    click_on "Back"
  end

  test "destroying a Distribution center" do
    visit distribution_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distribution center was successfully destroyed"
  end
end
