require 'test_helper'

class AnalysisTechniquesControllerTest < ActionController::TestCase
  setup do
    @analysis_technique = analysis_techniques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:analysis_techniques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create analysis_technique" do
    assert_difference('AnalysisTechnique.count') do
      post :create, analysis_technique: { name: @analysis_technique.name }
    end

    assert_redirected_to analysis_technique_path(assigns(:analysis_technique))
  end

  test "should show analysis_technique" do
    get :show, id: @analysis_technique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @analysis_technique
    assert_response :success
  end

  test "should update analysis_technique" do
    put :update, id: @analysis_technique, analysis_technique: { name: @analysis_technique.name }
    assert_redirected_to analysis_technique_path(assigns(:analysis_technique))
  end

  test "should destroy analysis_technique" do
    assert_difference('AnalysisTechnique.count', -1) do
      delete :destroy, id: @analysis_technique
    end

    assert_redirected_to analysis_techniques_path
  end
end
