require 'test_helper'

class PurposeOfImagingsControllerTest < ActionController::TestCase
  setup do
    @purpose_of_imaging = purpose_of_imagings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purpose_of_imagings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purpose_of_imaging" do
    assert_difference('PurposeOfImaging.count') do
      post :create, purpose_of_imaging: { name: @purpose_of_imaging.name }
    end

    assert_redirected_to purpose_of_imaging_path(assigns(:purpose_of_imaging))
  end

  test "should show purpose_of_imaging" do
    get :show, id: @purpose_of_imaging
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purpose_of_imaging
    assert_response :success
  end

  test "should update purpose_of_imaging" do
    put :update, id: @purpose_of_imaging, purpose_of_imaging: { name: @purpose_of_imaging.name }
    assert_redirected_to purpose_of_imaging_path(assigns(:purpose_of_imaging))
  end

  test "should destroy purpose_of_imaging" do
    assert_difference('PurposeOfImaging.count', -1) do
      delete :destroy, id: @purpose_of_imaging
    end

    assert_redirected_to purpose_of_imagings_path
  end
end
