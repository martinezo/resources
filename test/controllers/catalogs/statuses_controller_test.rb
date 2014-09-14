require 'test_helper'

class Catalogs::StatusesControllerTest < ActionController::TestCase
  setup do
    @catalogs_status = catalogs_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_status" do
    assert_difference('Catalogs::Status.count') do
      post :create, catalogs_status: { name: @catalogs_status.name }
    end

    assert_redirected_to catalogs_status_path(assigns(:catalogs_status))
  end

  test "should show catalogs_status" do
    get :show, id: @catalogs_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_status
    assert_response :success
  end

  test "should update catalogs_status" do
    patch :update, id: @catalogs_status, catalogs_status: { name: @catalogs_status.name }
    assert_redirected_to catalogs_status_path(assigns(:catalogs_status))
  end

  test "should destroy catalogs_status" do
    assert_difference('Catalogs::Status.count', -1) do
      delete :destroy, id: @catalogs_status
    end

    assert_redirected_to catalogs_statuses_path
  end
end
