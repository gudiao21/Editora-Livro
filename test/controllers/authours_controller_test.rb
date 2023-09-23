require "test_helper"

class AuthoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authour = authours(:one)
  end

  test "should get index" do
    get authours_url
    assert_response :success
  end

  test "should get new" do
    get new_authour_url
    assert_response :success
  end

  test "should create authour" do
    assert_difference("Authour.count") do
      post authours_url, params: { authour: { name: @authour.name } }
    end

    assert_redirected_to authour_url(Authour.last)
  end

  test "should show authour" do
    get authour_url(@authour)
    assert_response :success
  end

  test "should get edit" do
    get edit_authour_url(@authour)
    assert_response :success
  end

  test "should update authour" do
    patch authour_url(@authour), params: { authour: { name: @authour.name } }
    assert_redirected_to authour_url(@authour)
  end

  test "should destroy authour" do
    assert_difference("Authour.count", -1) do
      delete authour_url(@authour)
    end

    assert_redirected_to authours_url
  end
end
