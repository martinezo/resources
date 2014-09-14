require 'test_helper'

class Catalogs::DepartmentsControllerTest < ActionController::TestCase
  setup do
    @catalogs_department = catalogs_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_department" do
    assert_difference('Catalogs::Department.count') do
      post :create, catalogs_department: { abbr: @catalogs_department.abbr, img_header: @catalogs_department.img_header, institution_id: @catalogs_department.institution_id, name: @catalogs_department.name }
    end

    assert_redirected_to catalogs_department_path(assigns(:catalogs_department))
  end

  test "should show catalogs_department" do
    get :show, id: @catalogs_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_department
    assert_response :success
  end

  test "should update catalogs_department" do
    patch :update, id: @catalogs_department, catalogs_department: { abbr: @catalogs_department.abbr, img_header: @catalogs_department.img_header, institution_id: @catalogs_department.institution_id, name: @catalogs_department.name }
    assert_redirected_to catalogs_department_path(assigns(:catalogs_department))
  end

  test "should destroy catalogs_department" do
    assert_difference('Catalogs::Department.count', -1) do
      delete :destroy, id: @catalogs_department
    end

    assert_redirected_to catalogs_departments_path
  end
end
