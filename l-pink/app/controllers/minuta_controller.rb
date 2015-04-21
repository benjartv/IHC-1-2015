class MinutaController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index

    # Obtiene el tema del cual se quiere obtener la informacion

    @nTema = params[:parametro]

    # Valores constantes para obtener los acuerdos, etc...

    @tipoAcuerdo = 1
    @tipoDesacuerdo = 2
    @tipoCompromiso = 3
    @tipoDuda = 4

    # Recupera los elementos de un tema en particular

    @dAcuerdo = Elemento.where(:tipoElemento_id => @tipoAcuerdo).where(:tema_id => @nTema)
    @dDuda = Elemento.where(:tipoElemento_id => @tipoDuda).where(:tema_id => @nTema)
    @dCompromiso = Elemento.where(:tipoElemento_id => @tipoCompromiso).where(:tema_id => @nTema)
    @dDesacuerdo = Elemento.where(:tipoElemento_id => @tipoDesacuerdo).where(:tema_id => @nTema)

    # Recupera el tema a tratar
    @dTema = Tema.where(:id => @nTema)
    

  end

  def show

    @Tema = Tema.all

  end

  def mostrar
  end
end
