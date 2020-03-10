require 'test_helper'

class MartialArtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @martial_art = martial_arts(:one)
  end

  test "should get index" do
    get martial_arts_url
    assert_response :success
  end

  test "should get new" do
    get new_martial_art_url
    assert_response :success
  end

  test "should create martial_art" do
    assert_difference('MartialArt.count') do
      post martial_arts_url, params: { martial_art: { name: @martial_art.name } }
    end

    assert_redirected_to martial_art_url(MartialArt.last)
  end

  test "should show martial_art" do
    get martial_art_url(@martial_art)
    assert_response :success
  end

  test "should get edit" do
    get edit_martial_art_url(@martial_art)
    assert_response :success
  end

  test "should update martial_art" do
    patch martial_art_url(@martial_art), params: { martial_art: { name: @martial_art.name } }
    assert_redirected_to martial_art_url(@martial_art)
  end

  test "should destroy martial_art" do
    assert_difference('MartialArt.count', -1) do
      delete martial_art_url(@martial_art)
    end

    assert_redirected_to martial_arts_url
  end
end
