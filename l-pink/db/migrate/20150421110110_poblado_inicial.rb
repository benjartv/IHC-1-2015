class PobladoInicial < ActiveRecord::Migration
  def change

  	# Poblado de tipos de elementos
  	TipoElemento.create( tipoElemento_nombre: "Acuerdo")
  	TipoElemento.create( tipoElemento_nombre: "Desacuerdo")
  	TipoElemento.create( tipoElemento_nombre: "Compromiso")
  	TipoElemento.create( tipoElemento_nombre: "Duda")
  	# Poblado de Proyectos iniciales
  	Proyecto.create( proyecto_nombre: "Proyecto L-Pink", proyecto_descripcion: "Proyecto curso IHC 2015", proyecto_inicio: "2015-08-29", proyecto_final: "2015-08-29" )
  	Proyecto.create( proyecto_nombre: "Sendfast", proyecto_descripcion: "Proyecto curso PBD 2014", proyecto_inicio: "2015-08-29", proyecto_final: "2015-08-29" )
  	# Agrega Actas a los proyectos
  	Acta.create( proyecto_id: '1', acta_fecha: "2015-08-29", acta_correlativo: "1")
  	Acta.create( proyecto_id: '1', acta_fecha: "2015-08-29", acta_correlativo: "2")
  	Acta.create( proyecto_id: '2', acta_fecha: "2015-08-29", acta_correlativo: "1")
  	Acta.create( proyecto_id: '2', acta_fecha: "2015-08-29", acta_correlativo: "2")
  	Acta.create( proyecto_id: '1', acta_fecha: "2015-08-29", acta_correlativo: "3")
  	Acta.create( proyecto_id: '1', acta_fecha: "2015-08-29", acta_correlativo: "4")
  	# Genera 2 temas por acta
  	Tema.create(acta_id: "1",tema_nombre: "TEMA1",tema_descripcion: "ALGO", tema_estado: "Pendiente",tema_correlativo: "1" )
  	Tema.create(acta_id: "1",tema_nombre: "TEMA2",tema_descripcion: "ALGO", tema_estado: "Pendiente",tema_correlativo: "2" )
  	Tema.create(acta_id: "3",tema_nombre: "TEMA3",tema_descripcion: "ALGO", tema_estado: "Pendiente",tema_correlativo: "1" )
  	Tema.create(acta_id: "3",tema_nombre: "TEMA4",tema_descripcion: "ALGO", tema_estado: "Pendiente",tema_correlativo: "2" )
  	Tema.create(acta_id: "2",tema_nombre: "TEMA5",tema_descripcion: "ALGO", tema_estado: "Pendiente",tema_correlativo: "1" )

  end
end
