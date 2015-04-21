class PobladoInicial < ActiveRecord::Migration
  def change

  	# Poblado de tipos de elementos
  	TipoElemento.create( tipoElemento_nombre: "Acuerdo")
  	TipoElemento.create( tipoElemento_nombre: "Desacuerdo")
  	TipoElemento.create( tipoElemento_nombre: "Compromiso")
  	TipoElemento.create( tipoElemento_nombre: "Duda")
  	# Poblado de Proyectos iniciales


  	# Agrega Actas a los proyectos

  	# Genera 2 temas por acta




  end
end
