require 'test_helper'

class FightersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fighter = fighters(:one)
  end

  test "should get index" do
    get fighters_url
    assert_response :success
  end

  test "should get new" do
    get new_fighter_url
    assert_response :success
  end

  test "should create fighter" do
    assert_difference('Fighter.count') do
      post fighters_url, params: { fighter: { activity_begin: @fighter.activity_begin, category_id: @fighter.category_id, date_of_birth: @fighter.date_of_birth, firstname: @fighter.firstname, gender_id: @fighter.gender_id, height: @fighter.height, image_text: @fighter.image_text, image_url: @fighter.image_url, last_payment: @fighter.last_payment, lastname: @fighter.lastname, martial_art_id: @fighter.martial_art_id, notes: @fighter.notes, weight: @fighter.weight } }
    end

    assert_redirected_to fighter_url(Fighter.last)
  end

  test "should show fighter" do
    get fighter_url(@fighter)
    assert_response :success
  end

  test "should get edit" do
    get edit_fighter_url(@fighter)
    assert_response :success
  end

  test "should update fighter" do
    patch fighter_url(@fighter), params: { fighter: { activity_begin: @fighter.activity_begin, category_id: @fighter.category_id, date_of_birth: @fighter.date_of_birth, firstname: @fighter.firstname, gender_id: @fighter.gender_id, height: @fighter.height, image_text: @fighter.image_text, image_url: @fighter.image_url, last_payment: @fighter.last_payment, lastname: @fighter.lastname, martial_art_id: @fighter.martial_art_id, notes: @fighter.notes, weight: @fighter.weight } }
    assert_redirected_to fighter_url(@fighter)
  end

  test "should destroy fighter" do
    assert_difference('Fighter.count', -1) do
      delete fighter_url(@fighter)
    end

    assert_redirected_to fighters_url
  end
end
