require 'test_helper'

class NewUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_user = new_users(:one)
  end

  test "should get index" do
    get new_users_url
    assert_response :success
  end

  test "should get new" do
    get new_new_user_url
    assert_response :success
  end

  test "should create new_user" do
    assert_difference('NewUser.count') do
      post new_users_url, params: { new_user: { email: @new_user.email, login: @new_user.login, name: @new_user.name } }
    end

    assert_redirected_to new_user_url(NewUser.last)
  end

  test "should show new_user" do
    get new_user_url(@new_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_user_url(@new_user)
    assert_response :success
  end

  test "should update new_user" do
    patch new_user_url(@new_user), params: { new_user: { email: @new_user.email, login: @new_user.login, name: @new_user.name } }
    assert_redirected_to new_user_url(@new_user)
  end

  test "should destroy new_user" do
    assert_difference('NewUser.count', -1) do
      delete new_user_url(@new_user)
    end

    assert_redirected_to new_users_url
  end
end
