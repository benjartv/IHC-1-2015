require 'test_helper'

class TipoElementosControllerTest < ActionController::TestCase
  setup do
    @tipo_elemento = tipo_elementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_elementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_elemento" do
    assert_difference('TipoElemento.count') do
      post :create, tipo_elemento: { tipoElemento_nombre: @tipo_elemento.tipoElemento_nombre }
    end

    assert_redirected_to tipo_elemento_path(assigns(:tipo_elemento))
  end

  test "should show tipo_elemento" do
    get :show, id: @tipo_elemento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_elemento
    assert_response :success
  end

  test "should update tipo_elemento" do
    patch :update, id: @tipo_elemento, tipo_elemento: { tipoElemento_nombre: @tipo_elemento.tipoElemento_nombre }
    assert_redirected_to tipo_elemento_path(assigns(:tipo_elemento))
  end

  test "should destroy tipo_elemento" do
    assert_difference('TipoElemento.count', -1) do
      delete :destroy, id: @tipo_elemento
    end

    assert_redirected_to tipo_elementos_path
  end
end
