require 'test_helper'

class CellOrOrganismsControllerTest < ActionController::TestCase
  setup do
    @cell_or_organism = cell_or_organisms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cell_or_organisms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cell_or_organism" do
    assert_difference('CellOrOrganism.count') do
      post :create, cell_or_organism: { name: @cell_or_organism.name }
    end

    assert_redirected_to cell_or_organism_path(assigns(:cell_or_organism))
  end

  test "should show cell_or_organism" do
    get :show, id: @cell_or_organism
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cell_or_organism
    assert_response :success
  end

  test "should update cell_or_organism" do
    put :update, id: @cell_or_organism, cell_or_organism: { name: @cell_or_organism.name }
    assert_redirected_to cell_or_organism_path(assigns(:cell_or_organism))
  end

  test "should destroy cell_or_organism" do
    assert_difference('CellOrOrganism.count', -1) do
      delete :destroy, id: @cell_or_organism
    end

    assert_redirected_to cell_or_organisms_path
  end
end
