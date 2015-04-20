require 'test_helper'

class ElementosControllerTest < ActionController::TestCase
  setup do
    @elemento = elementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elemento" do
    assert_difference('Elemento.count') do
      post :create, elemento: { elemento_descripcion: @elemento.elemento_descripcion, elemento_fechaFinal: @elemento.elemento_fechaFinal, elemento_fechaInicio: @elemento.elemento_fechaInicio, tema_id: @elemento.tema_id, tipoElemento_id: @elemento.tipoElemento_id }
    end

    assert_redirected_to elemento_path(assigns(:elemento))
  end

  test "should show elemento" do
    get :show, id: @elemento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elemento
    assert_response :success
  end

  test "should update elemento" do
    patch :update, id: @elemento, elemento: { elemento_descripcion: @elemento.elemento_descripcion, elemento_fechaFinal: @elemento.elemento_fechaFinal, elemento_fechaInicio: @elemento.elemento_fechaInicio, tema_id: @elemento.tema_id, tipoElemento_id: @elemento.tipoElemento_id }
    assert_redirected_to elemento_path(assigns(:elemento))
  end

  test "should destroy elemento" do
    assert_difference('Elemento.count', -1) do
      delete :destroy, id: @elemento
    end

    assert_redirected_to elementos_path
  end
end
