require 'test_helper'

class Catalogs::UserResourcesControllerTest < ActionController::TestCase
  setup do
    @catalogs_user_resource = catalogs_user_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_user_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_user_resource" do
    assert_difference('Catalogs::UserResource.count') do
      post :create, catalogs_user_resource: { admin_user_id: @catalogs_user_resource.admin_user_id, administrator: @catalogs_user_resource.administrator, resource_id: @catalogs_user_resource.resource_id }
    end

    assert_redirected_to catalogs_user_resource_path(assigns(:catalogs_user_resource))
  end

  test "should show catalogs_user_resource" do
    get :show, id: @catalogs_user_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_user_resource
    assert_response :success
  end

  test "should update catalogs_user_resource" do
    patch :update, id: @catalogs_user_resource, catalogs_user_resource: { admin_user_id: @catalogs_user_resource.admin_user_id, administrator: @catalogs_user_resource.administrator, resource_id: @catalogs_user_resource.resource_id }
    assert_redirected_to catalogs_user_resource_path(assigns(:catalogs_user_resource))
  end

  test "should destroy catalogs_user_resource" do
    assert_difference('Catalogs::UserResource.count', -1) do
      delete :destroy, id: @catalogs_user_resource
    end

    assert_redirected_to catalogs_user_resources_path
  end
end
