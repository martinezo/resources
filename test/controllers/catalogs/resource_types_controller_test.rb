require 'test_helper'

class Catalogs::ResourceTypesControllerTest < ActionController::TestCase
  setup do
    @catalogs_resource_type = catalogs_resource_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_resource_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_resource_type" do
    assert_difference('Catalogs::ResourceType.count') do
      post :create, catalogs_resource_type: { description: @catalogs_resource_type.description, name: @catalogs_resource_type.name }
    end

    assert_redirected_to catalogs_resource_type_path(assigns(:catalogs_resource_type))
  end

  test "should show catalogs_resource_type" do
    get :show, id: @catalogs_resource_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_resource_type
    assert_response :success
  end

  test "should update catalogs_resource_type" do
    patch :update, id: @catalogs_resource_type, catalogs_resource_type: { description: @catalogs_resource_type.description, name: @catalogs_resource_type.name }
    assert_redirected_to catalogs_resource_type_path(assigns(:catalogs_resource_type))
  end

  test "should destroy catalogs_resource_type" do
    assert_difference('Catalogs::ResourceType.count', -1) do
      delete :destroy, id: @catalogs_resource_type
    end

    assert_redirected_to catalogs_resource_types_path
  end
end
