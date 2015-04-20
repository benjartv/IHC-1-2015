json.array!(@elementos) do |elemento|
  json.extract! elemento, :id, :tipoElemento_id, :tema_id, :elemento_descripcion, :elemento_fechaInicio, :elemento_fechaFinal
  json.url elemento_url(elemento, format: :json)
end
