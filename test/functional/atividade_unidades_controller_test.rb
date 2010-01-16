require 'test_helper'

class AtividadeUnidadesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atividade_unidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atividade_unidade" do
    assert_difference('AtividadeUnidade.count') do
      post :create, :atividade_unidade => { }
    end

    assert_redirected_to atividade_unidade_path(assigns(:atividade_unidade))
  end

  test "should show atividade_unidade" do
    get :show, :id => atividade_unidades(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => atividade_unidades(:one).to_param
    assert_response :success
  end

  test "should update atividade_unidade" do
    put :update, :id => atividade_unidades(:one).to_param, :atividade_unidade => { }
    assert_redirected_to atividade_unidade_path(assigns(:atividade_unidade))
  end

  test "should destroy atividade_unidade" do
    assert_difference('AtividadeUnidade.count', -1) do
      delete :destroy, :id => atividade_unidades(:one).to_param
    end

    assert_redirected_to atividade_unidades_path
  end
end
