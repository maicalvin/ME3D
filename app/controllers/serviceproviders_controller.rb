class ServiceprovidersController < ApplicationController
  before_action :set_serviceprovider, only: [:show, :edit, :update, :destroy]

  # GET /serviceproviders
  # GET /serviceproviders.json
  def index
    @serviceproviders = Serviceprovider.all
  end

  # GET /serviceproviders/1
  # GET /serviceproviders/1.json
  def show
  end

  # GET /serviceproviders/new
  def new
    @serviceprovider = Serviceprovider.new
  end

  # GET /serviceproviders/1/edit
  def edit
  end

  # POST /serviceproviders
  # POST /serviceproviders.json
  def create
    @serviceprovider = Serviceprovider.new(serviceprovider_params)

    respond_to do |format|
      if @serviceprovider.save
        format.html { redirect_to @serviceprovider, notice: 'Serviceprovider was successfully created.' }
        format.json { render :show, status: :created, location: @serviceprovider }
      else
        format.html { render :new }
        format.json { render json: @serviceprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serviceproviders/1
  # PATCH/PUT /serviceproviders/1.json
  def update
    respond_to do |format|
      if @serviceprovider.update(serviceprovider_params)
        format.html { redirect_to @serviceprovider, notice: 'Serviceprovider was successfully updated.' }
        format.json { render :show, status: :ok, location: @serviceprovider }
      else
        format.html { render :edit }
        format.json { render json: @serviceprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serviceproviders/1
  # DELETE /serviceproviders/1.json
  def destroy
    @serviceprovider.destroy
    respond_to do |format|
      format.html { redirect_to serviceproviders_url, notice: 'Serviceprovider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serviceprovider
      @serviceprovider = Serviceprovider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serviceprovider_params
      params.require(:serviceprovider).permit(:provider_name,:description,:location,:materials)

    end
end      
