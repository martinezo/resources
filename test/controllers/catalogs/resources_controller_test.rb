require 'test_helper'

class Catalogs::ResourcesControllerTest < ActionController::TestCase
  setup do
    @catalogs_resource = catalogs_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_resource" do
    assert_difference('Catalogs::Resource.count') do
      post :create, catalogs_resource: { abbr: @catalogs_resource.abbr, active: @catalogs_resource.active, admin_user_id: @catalogs_resource.admin_user_id, description: @catalogs_resource.description, name: @catalogs_resource.name, resource_type_id: @catalogs_resource.resource_type_id, ubication: @catalogs_resource.ubication, unique: @catalogs_resource.unique }
    end

    assert_redirected_to catalogs_resource_path(assigns(:catalogs_resource))
  end

  test "should show catalogs_resource" do
    get :show, id: @catalogs_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_resource
    assert_response :success
  end

  test "should update catalogs_resource" do
    patch :update, id: @catalogs_resource, catalogs_resource: { abbr: @catalogs_resource.abbr, active: @catalogs_resource.active, admin_user_id: @catalogs_resource.admin_user_id, description: @catalogs_resource.description, name: @catalogs_resource.name, resource_type_id: @catalogs_resource.resource_type_id, ubication: @catalogs_resource.ubication, unique: @catalogs_resource.unique }
    assert_redirected_to catalogs_resource_path(assigns(:catalogs_resource))
  end

  test "should destroy catalogs_resource" do
    assert_difference('Catalogs::Resource.count', -1) do
      delete :destroy, id: @catalogs_resource
    end

    assert_redirected_to catalogs_resources_path
  end
end
