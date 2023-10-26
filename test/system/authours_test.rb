require "application_system_test_case"

class AuthoursTest < ApplicationSystemTestCase
  setup do
    @authour = authours(:one)
  end

  test "visiting the index" do
    visit authours_url
    assert_selector "h1", text: "Authours"
  end

  test "should create authour" do
    visit authours_url
    click_on "New authour"

    fill_in "Name", with: @authour.name
    click_on "Create Authour"

    assert_text "Authour was successfully created"
    click_on "Back"
  end

  test "should update Authour" do
    visit authour_url(@authour)
    click_on "Edit this authour", match: :first

    fill_in "Name", with: @authour.name
    click_on "Update Authour"

    assert_text "Authour was successfully updated"
    click_on "Back"
  end

  test "should destroy Authour" do
    visit authour_url(@authour)
    click_on "Destroy this authour", match: :first

    assert_text "Authour was successfully destroyed"
  end
end
