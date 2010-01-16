require 'test_helper'

class EmpresasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa" do
    assert_difference('Empresa.count') do
      post :create, :empresa => { }
    end

    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should show empresa" do
    get :show, :id => empresas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => empresas(:one).to_param
    assert_response :success
  end

  test "should update empresa" do
    put :update, :id => empresas(:one).to_param, :empresa => { }
    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should destroy empresa" do
    assert_difference('Empresa.count', -1) do
      delete :destroy, :id => empresas(:one).to_param
    end

    assert_redirected_to empresas_path
  end
end
