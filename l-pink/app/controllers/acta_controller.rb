class ActaController < ApplicationController
  before_action :set_actum, only: [:show, :edit, :update, :destroy]

  # GET /acta
  # GET /acta.json
  def index
    @acta = Acta.all
  end

  # GET /acta/1
  # GET /acta/1.json
  def show
  end

  # GET /acta/new
  def new
    @actum = Acta.new
  end

  # GET /acta/1/edit
  def edit
  end

  # POST /acta
  # POST /acta.json
  def create
    @actum = Acta.new(actum_params)

    respond_to do |format|
      if @actum.save
        format.html { redirect_to @actum, notice: 'Acta was successfully created.' }
        format.json { render :show, status: :created, location: @actum }
      else
        format.html { render :new }
        format.json { render json: @actum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acta/1
  # PATCH/PUT /acta/1.json
  def update
    respond_to do |format|
      if @actum.update(actum_params)
        format.html { redirect_to @actum, notice: 'Acta was successfully updated.' }
        format.json { render :show, status: :ok, location: @actum }
      else
        format.html { render :edit }
        format.json { render json: @actum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acta/1
  # DELETE /acta/1.json
  def destroy
    @actum.destroy
    respond_to do |format|
      format.html { redirect_to acta_index_url, notice: 'Acta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actum
      @actum = Acta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actum_params
      params.require(:actum).permit(:id_proyecto, :acta_fecha, :acta_correlativo)
    end
end
