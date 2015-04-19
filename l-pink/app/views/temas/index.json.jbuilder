json.array!(@temas) do |tema|
  json.extract! tema, :id, :id_acta, :tema_nombre, :tema_descripcion, :tema_estado
  json.url tema_url(tema, format: :json)
end
