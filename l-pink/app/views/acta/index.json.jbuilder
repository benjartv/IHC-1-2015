json.array!(@acta) do |actum|
  json.extract! actum, :id, :id_proyecto, :acta_fecha, :acta_correlativo
  json.url actum_url(actum, format: :json)
end
