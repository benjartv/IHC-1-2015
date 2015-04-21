json.array!(@tipo_elementos) do |tipo_elemento|
  json.extract! tipo_elemento, :id, :tipoElemento_nombre
  json.url tipo_elemento_url(tipo_elemento, format: :json)
end
