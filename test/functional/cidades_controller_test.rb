require 'test_helper'

class CidadesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cidade" do
    assert_difference('Cidade.count') do
      post :create, :cidade => { }
    end

    assert_redirected_to cidade_path(assigns(:cidade))
  end

  test "should show cidade" do
    get :show, :id => cidades(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cidades(:one).to_param
    assert_response :success
  end

  test "should update cidade" do
    put :update, :id => cidades(:one).to_param, :cidade => { }
    assert_redirected_to cidade_path(assigns(:cidade))
  end

  test "should destroy cidade" do
    assert_difference('Cidade.count', -1) do
      delete :destroy, :id => cidades(:one).to_param
    end

    assert_redirected_to cidades_path
  end
end
