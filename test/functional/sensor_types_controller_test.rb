require 'test_helper'

class SensorTypesControllerTest < ActionController::TestCase
  setup do
    @sensor_type = sensor_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensor_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor_type" do
    assert_difference('SensorType.count') do
      post :create, sensor_type: { name: @sensor_type.name }
    end

    assert_redirected_to sensor_type_path(assigns(:sensor_type))
  end

  test "should show sensor_type" do
    get :show, id: @sensor_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensor_type
    assert_response :success
  end

  test "should update sensor_type" do
    put :update, id: @sensor_type, sensor_type: { name: @sensor_type.name }
    assert_redirected_to sensor_type_path(assigns(:sensor_type))
  end

  test "should destroy sensor_type" do
    assert_difference('SensorType.count', -1) do
      delete :destroy, id: @sensor_type
    end

    assert_redirected_to sensor_types_path
  end
end
