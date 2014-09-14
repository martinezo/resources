require 'test_helper'

class Admin::UsersControllerTest < ActionController::TestCase
  setup do
    @admin_user = admin_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_user" do
    assert_difference('Admin::User.count') do
      post :create, admin_user: { department_id: @admin_user.department_id, login: @admin_user.login, mail: @admin_user.mail, name: @admin_user.name, type: @admin_user.type }
    end

    assert_redirected_to admin_user_path(assigns(:admin_user))
  end

  test "should show admin_user" do
    get :show, id: @admin_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_user
    assert_response :success
  end

  test "should update admin_user" do
    patch :update, id: @admin_user, admin_user: { department_id: @admin_user.department_id, login: @admin_user.login, mail: @admin_user.mail, name: @admin_user.name, type: @admin_user.type }
    assert_redirected_to admin_user_path(assigns(:admin_user))
  end

  test "should destroy admin_user" do
    assert_difference('Admin::User.count', -1) do
      delete :destroy, id: @admin_user
    end

    assert_redirected_to admin_users_path
  end
end
