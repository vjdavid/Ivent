require 'test_helper'

class ResguardosControllerTest < ActionController::TestCase
  setup do
    @resguardo = resguardos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resguardos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resguardo" do
    assert_difference('Resguardo.count') do
      post :create, resguardo: { concepto: @resguardo.concepto, conectividad: @resguardo.conectividad, descripcion: @resguardo.descripcion, estado: @resguardo.estado, f_compra: @resguardo.f_compra, garantia: @resguardo.garantia, imagen: @resguardo.imagen, marca: @resguardo.marca, modelo: @resguardo.modelo, no_resguardo: @resguardo.no_resguardo, no_serie: @resguardo.no_serie, notas: @resguardo.notas, peso: @resguardo.peso, precio: @resguardo.precio, proveedor: @resguardo.proveedor, ubicacion: @resguardo.ubicacion, valor_actual: @resguardo.valor_actual }
    end

    assert_redirected_to resguardo_path(assigns(:resguardo))
  end

  test "should show resguardo" do
    get :show, id: @resguardo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resguardo
    assert_response :success
  end

  test "should update resguardo" do
    patch :update, id: @resguardo, resguardo: { concepto: @resguardo.concepto, conectividad: @resguardo.conectividad, descripcion: @resguardo.descripcion, estado: @resguardo.estado, f_compra: @resguardo.f_compra, garantia: @resguardo.garantia, imagen: @resguardo.imagen, marca: @resguardo.marca, modelo: @resguardo.modelo, no_resguardo: @resguardo.no_resguardo, no_serie: @resguardo.no_serie, notas: @resguardo.notas, peso: @resguardo.peso, precio: @resguardo.precio, proveedor: @resguardo.proveedor, ubicacion: @resguardo.ubicacion, valor_actual: @resguardo.valor_actual }
    assert_redirected_to resguardo_path(assigns(:resguardo))
  end

  test "should destroy resguardo" do
    assert_difference('Resguardo.count', -1) do
      delete :destroy, id: @resguardo
    end

    assert_redirected_to resguardos_path
  end
end
