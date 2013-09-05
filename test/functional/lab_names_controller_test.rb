require 'test_helper'

class LabNamesControllerTest < ActionController::TestCase
  setup do
    @lab_name = lab_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab_name" do
    assert_difference('LabName.count') do
      post :create, lab_name: { name: @lab_name.name }
    end

    assert_redirected_to lab_name_path(assigns(:lab_name))
  end

  test "should show lab_name" do
    get :show, id: @lab_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab_name
    assert_response :success
  end

  test "should update lab_name" do
    put :update, id: @lab_name, lab_name: { name: @lab_name.name }
    assert_redirected_to lab_name_path(assigns(:lab_name))
  end

  test "should destroy lab_name" do
    assert_difference('LabName.count', -1) do
      delete :destroy, id: @lab_name
    end

    assert_redirected_to lab_names_path
  end
end
