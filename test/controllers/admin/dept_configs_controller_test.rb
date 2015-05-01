require 'test_helper'

class Admin::DeptConfigsControllerTest < ActionController::TestCase
  setup do
    @admin_dept_config = admin_dept_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_dept_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_dept_config" do
    assert_difference('Admin::DeptConfig.count') do
      post :create, admin_dept_config: { department_id: @admin_dept_config.department_id, field: @admin_dept_config.field, table: @admin_dept_config.table, text: @admin_dept_config.text, visible: @admin_dept_config.visible }
    end

    assert_redirected_to admin_dept_config_path(assigns(:admin_dept_config))
  end

  test "should show admin_dept_config" do
    get :show, id: @admin_dept_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_dept_config
    assert_response :success
  end

  test "should update admin_dept_config" do
    patch :update, id: @admin_dept_config, admin_dept_config: { department_id: @admin_dept_config.department_id, field: @admin_dept_config.field, table: @admin_dept_config.table, text: @admin_dept_config.text, visible: @admin_dept_config.visible }
    assert_redirected_to admin_dept_config_path(assigns(:admin_dept_config))
  end

  test "should destroy admin_dept_config" do
    assert_difference('Admin::DeptConfig.count', -1) do
      delete :destroy, id: @admin_dept_config
    end

    assert_redirected_to admin_dept_configs_path
  end
end
