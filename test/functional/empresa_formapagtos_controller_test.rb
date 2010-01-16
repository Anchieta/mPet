require 'test_helper'

class EmpresaFormapagtosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresa_formapagtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa_formapagto" do
    assert_difference('EmpresaFormapagto.count') do
      post :create, :empresa_formapagto => { }
    end

    assert_redirected_to empresa_formapagto_path(assigns(:empresa_formapagto))
  end

  test "should show empresa_formapagto" do
    get :show, :id => empresa_formapagtos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => empresa_formapagtos(:one).to_param
    assert_response :success
  end

  test "should update empresa_formapagto" do
    put :update, :id => empresa_formapagtos(:one).to_param, :empresa_formapagto => { }
    assert_redirected_to empresa_formapagto_path(assigns(:empresa_formapagto))
  end

  test "should destroy empresa_formapagto" do
    assert_difference('EmpresaFormapagto.count', -1) do
      delete :destroy, :id => empresa_formapagtos(:one).to_param
    end

    assert_redirected_to empresa_formapagtos_path
  end
end
