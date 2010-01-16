require 'test_helper'

class FormapagtosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formapagtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formapagto" do
    assert_difference('Formapagto.count') do
      post :create, :formapagto => { }
    end

    assert_redirected_to formapagto_path(assigns(:formapagto))
  end

  test "should show formapagto" do
    get :show, :id => formapagtos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => formapagtos(:one).to_param
    assert_response :success
  end

  test "should update formapagto" do
    put :update, :id => formapagtos(:one).to_param, :formapagto => { }
    assert_redirected_to formapagto_path(assigns(:formapagto))
  end

  test "should destroy formapagto" do
    assert_difference('Formapagto.count', -1) do
      delete :destroy, :id => formapagtos(:one).to_param
    end

    assert_redirected_to formapagtos_path
  end
end
