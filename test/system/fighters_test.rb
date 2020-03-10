require "application_system_test_case"

class FightersTest < ApplicationSystemTestCase
  setup do
    @fighter = fighters(:one)
  end

  test "visiting the index" do
    visit fighters_url
    assert_selector "h1", text: "Fighters"
  end

  test "creating a Fighter" do
    visit fighters_url
    click_on "New Fighter"

    fill_in "Activity begin", with: @fighter.activity_begin
    fill_in "Category", with: @fighter.category_id
    fill_in "Date of birth", with: @fighter.date_of_birth
    fill_in "Firstname", with: @fighter.firstname
    fill_in "Gender", with: @fighter.gender_id
    fill_in "Height", with: @fighter.height
    fill_in "Image text", with: @fighter.image_text
    fill_in "Image url", with: @fighter.image_url
    fill_in "Last payment", with: @fighter.last_payment
    fill_in "Lastname", with: @fighter.lastname
    fill_in "Martial art", with: @fighter.martial_art_id
    fill_in "Notes", with: @fighter.notes
    fill_in "Weight", with: @fighter.weight
    click_on "Create Fighter"

    assert_text "Fighter was successfully created"
    click_on "Back"
  end

  test "updating a Fighter" do
    visit fighters_url
    click_on "Edit", match: :first

    fill_in "Activity begin", with: @fighter.activity_begin
    fill_in "Category", with: @fighter.category_id
    fill_in "Date of birth", with: @fighter.date_of_birth
    fill_in "Firstname", with: @fighter.firstname
    fill_in "Gender", with: @fighter.gender_id
    fill_in "Height", with: @fighter.height
    fill_in "Image text", with: @fighter.image_text
    fill_in "Image url", with: @fighter.image_url
    fill_in "Last payment", with: @fighter.last_payment
    fill_in "Lastname", with: @fighter.lastname
    fill_in "Martial art", with: @fighter.martial_art_id
    fill_in "Notes", with: @fighter.notes
    fill_in "Weight", with: @fighter.weight
    click_on "Update Fighter"

    assert_text "Fighter was successfully updated"
    click_on "Back"
  end

  test "destroying a Fighter" do
    visit fighters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fighter was successfully destroyed"
  end
end
