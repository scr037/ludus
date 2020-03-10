require "application_system_test_case"

class MartialArtsTest < ApplicationSystemTestCase
  setup do
    @martial_art = martial_arts(:one)
  end

  test "visiting the index" do
    visit martial_arts_url
    assert_selector "h1", text: "Martial Arts"
  end

  test "creating a Martial art" do
    visit martial_arts_url
    click_on "New Martial Art"

    fill_in "Name", with: @martial_art.name
    click_on "Create Martial art"

    assert_text "Martial art was successfully created"
    click_on "Back"
  end

  test "updating a Martial art" do
    visit martial_arts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @martial_art.name
    click_on "Update Martial art"

    assert_text "Martial art was successfully updated"
    click_on "Back"
  end

  test "destroying a Martial art" do
    visit martial_arts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Martial art was successfully destroyed"
  end
end
