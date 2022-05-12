require "application_system_test_case"

class DrinkingsTest < ApplicationSystemTestCase
  setup do
    @drinking = drinkings(:one)
  end

  test "visiting the index" do
    visit drinkings_url
    assert_selector "h1", text: "Drinkings"
  end

  test "creating a Drinking" do
    visit drinkings_url
    click_on "New Drinking"

    fill_in "Drinking end time", with: @drinking.drinking_end_time
    fill_in "Driving start time", with: @drinking.driving_start_time
    fill_in "Hour", with: @drinking.hour
    fill_in "Status", with: @drinking.status
    fill_in "User", with: @drinking.user_id
    click_on "Create Drinking"

    assert_text "Drinking was successfully created"
    click_on "Back"
  end

  test "updating a Drinking" do
    visit drinkings_url
    click_on "Edit", match: :first

    fill_in "Drinking end time", with: @drinking.drinking_end_time
    fill_in "Driving start time", with: @drinking.driving_start_time
    fill_in "Hour", with: @drinking.hour
    fill_in "Status", with: @drinking.status
    fill_in "User", with: @drinking.user_id
    click_on "Update Drinking"

    assert_text "Drinking was successfully updated"
    click_on "Back"
  end

  test "destroying a Drinking" do
    visit drinkings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drinking was successfully destroyed"
  end
end
