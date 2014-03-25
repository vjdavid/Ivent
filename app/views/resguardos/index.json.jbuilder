json.array!(@resguardos) do |resguardo|
  json.extract! resguardo, :id, :no_resguardo, :concepto, :descripcion, :marca, :modelo, :imagen, :no_serie, :precio, :valor_actual, :ubicacion, :estado, :f_compra, :conectividad, :peso, :proveedor, :notas, :garantia
  json.url resguardo_url(resguardo, format: :json)
end
