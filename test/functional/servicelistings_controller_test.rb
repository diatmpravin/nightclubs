require 'test_helper'

class ServicelistingsControllerTest < ActionController::TestCase
  setup do
    @servicelisting = servicelistings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicelistings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicelisting" do
    assert_difference('Servicelisting.count') do
      post :create, servicelisting: @servicelisting.attributes
    end

    assert_redirected_to servicelisting_path(assigns(:servicelisting))
  end

  test "should show servicelisting" do
    get :show, id: @servicelisting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicelisting
    assert_response :success
  end

  test "should update servicelisting" do
    put :update, id: @servicelisting, servicelisting: @servicelisting.attributes
    assert_redirected_to servicelisting_path(assigns(:servicelisting))
  end

  test "should destroy servicelisting" do
    assert_difference('Servicelisting.count', -1) do
      delete :destroy, id: @servicelisting
    end

    assert_redirected_to servicelistings_path
  end
end
