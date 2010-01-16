require 'test_helper'

class AcessoUnidadesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acesso_unidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acesso_unidade" do
    assert_difference('AcessoUnidade.count') do
      post :create, :acesso_unidade => { }
    end

    assert_redirected_to acesso_unidade_path(assigns(:acesso_unidade))
  end

  test "should show acesso_unidade" do
    get :show, :id => acesso_unidades(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => acesso_unidades(:one).to_param
    assert_response :success
  end

  test "should update acesso_unidade" do
    put :update, :id => acesso_unidades(:one).to_param, :acesso_unidade => { }
    assert_redirected_to acesso_unidade_path(assigns(:acesso_unidade))
  end

  test "should destroy acesso_unidade" do
    assert_difference('AcessoUnidade.count', -1) do
      delete :destroy, :id => acesso_unidades(:one).to_param
    end

    assert_redirected_to acesso_unidades_path
  end
end
