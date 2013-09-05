require 'test_helper'

class BiosensorsControllerTest < ActionController::TestCase
  setup do
    @biosensor = biosensors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biosensors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biosensor" do
    assert_difference('Biosensor.count') do
      post :create, biosensor: { analysis_technique: @biosensor.analysis_technique, cell_or_organism: @biosensor.cell_or_organism, host_type: @biosensor.host_type, imaging_purpose: @biosensor.imaging_purpose, lab_name: @biosensor.lab_name, sensor_type: @biosensor.sensor_type, substrate: @biosensor.substrate }
    end

    assert_redirected_to biosensor_path(assigns(:biosensor))
  end

  test "should show biosensor" do
    get :show, id: @biosensor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biosensor
    assert_response :success
  end

  test "should update biosensor" do
    put :update, id: @biosensor, biosensor: { analysis_technique: @biosensor.analysis_technique, cell_or_organism: @biosensor.cell_or_organism, host_type: @biosensor.host_type, imaging_purpose: @biosensor.imaging_purpose, lab_name: @biosensor.lab_name, sensor_type: @biosensor.sensor_type, substrate: @biosensor.substrate }
    assert_redirected_to biosensor_path(assigns(:biosensor))
  end

  test "should destroy biosensor" do
    assert_difference('Biosensor.count', -1) do
      delete :destroy, id: @biosensor
    end

    assert_redirected_to biosensors_path
  end
end
