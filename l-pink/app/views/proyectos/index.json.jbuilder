json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :id, :proyecto_nombre, :proyecto_descripcion, :proyecto_inicio, :proyecto_final
  json.url proyecto_url(proyecto, format: :json)
end
