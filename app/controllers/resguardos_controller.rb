class ResguardosController < ApplicationController
  before_action :set_resguardo, only: [:show, :edit, :update, :destroy]

  # GET /resguardos
  # GET /resguardos.json
  def index
    @resguardos = Resguardo.all
  end

  # GET /resguardos/1
  # GET /resguardos/1.json
  def show
  end

  # GET /resguardos/new
  def new
    @resguardo = Resguardo.new
  end

  # GET /resguardos/1/edit
  def edit
  end

  # POST /resguardos
  # POST /resguardos.json
  def create
    @resguardo = Resguardo.new(resguardo_params)

    respond_to do |format|
      if @resguardo.save
        format.html { redirect_to @resguardo, notice: 'Resguardo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resguardo }
      else
        format.html { render action: 'new' }
        format.json { render json: @resguardo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resguardos/1
  # PATCH/PUT /resguardos/1.json
  def update
    respond_to do |format|
      if @resguardo.update(resguardo_params)
        format.html { redirect_to @resguardo, notice: 'Resguardo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resguardo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resguardos/1
  # DELETE /resguardos/1.json
  def destroy
    @resguardo.destroy
    respond_to do |format|
      format.html { redirect_to resguardos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resguardo
      @resguardo = Resguardo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resguardo_params
      params.require(:resguardo).permit(:no_resguardo, :concepto, :descripcion, :marca, :modelo, :imagen, :no_serie, :precio, :valor_actual, :ubicacion, :estado, :f_compra, :conectividad, :peso, :proveedor, :notas, :garantia)
    end
end
