json.array!(@temas) do |tema|
  json.extract! tema, :id, :acta_id, :tema_nombre, :tema_descripcion, :tema_estado
  json.url tema_url(tema, format: :json)
end
