require "application_system_test_case"

class UtcsTest < ApplicationSystemTestCase
  setup do
    @utc = utcs(:one)
  end

  test "visiting the index" do
    visit utcs_url
    assert_selector "h1", text: "Utcs"
  end

  test "creating a Utc" do
    visit utcs_url
    click_on "New Utc"

    fill_in "City", with: @utc.city
    fill_in "Country", with: @utc.country
    click_on "Create Utc"

    assert_text "Utc was successfully created"
    click_on "Back"
  end

  test "updating a Utc" do
    visit utcs_url
    click_on "Edit", match: :first

    fill_in "City", with: @utc.city
    fill_in "Country", with: @utc.country
    click_on "Update Utc"

    assert_text "Utc was successfully updated"
    click_on "Back"
  end

  test "destroying a Utc" do
    visit utcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utc was successfully destroyed"
  end
end
