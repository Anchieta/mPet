require 'test_helper'

class CategoriasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria" do
    assert_difference('Categoria.count') do
      post :create, :categoria => { }
    end

    assert_redirected_to categoria_path(assigns(:categoria))
  end

  test "should show categoria" do
    get :show, :id => categorias(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => categorias(:one).to_param
    assert_response :success
  end

  test "should update categoria" do
    put :update, :id => categorias(:one).to_param, :categoria => { }
    assert_redirected_to categoria_path(assigns(:categoria))
  end

  test "should destroy categoria" do
    assert_difference('Categoria.count', -1) do
      delete :destroy, :id => categorias(:one).to_param
    end

    assert_redirected_to categorias_path
  end
end
