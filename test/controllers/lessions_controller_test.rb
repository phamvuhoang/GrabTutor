require 'test_helper'

class LessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lession = lessions(:one)
  end

  test "should get index" do
    get lessions_url
    assert_response :success
  end

  test "should get new" do
    get new_lession_url
    assert_response :success
  end

  test "should create lession" do
    assert_difference('Lession.count') do
      post lessions_url, params: { lession: { city_id: @lession.city_id, name: @lession.name, subject_id: @lession.subject_id, user_id: @lession.user_id } }
    end

    assert_redirected_to lession_url(Lession.last)
  end

  test "should show lession" do
    get lession_url(@lession)
    assert_response :success
  end

  test "should get edit" do
    get edit_lession_url(@lession)
    assert_response :success
  end

  test "should update lession" do
    patch lession_url(@lession), params: { lession: { city_id: @lession.city_id, name: @lession.name, subject_id: @lession.subject_id, user_id: @lession.user_id } }
    assert_redirected_to lession_url(@lession)
  end

  test "should destroy lession" do
    assert_difference('Lession.count', -1) do
      delete lession_url(@lession)
    end

    assert_redirected_to lessions_url
  end
end
