class LoadsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_load, only: [:show, :edit,:update, :destroy]
  before_action :set_holds, only: [:new,:edit,:update, :index,:search] 
  
  
  def redirect(url, text)
  	redirect_to url, notice: text
  end  
  
  def import
  	if params[:file]
  		Load.import(params[:file])
  		redirect(root_url, "Activity Data imported!")	
  	else
  		redirect(root_url, "Please upload a CSV file")
  	end
  end 
  

  # GET /loads
  # GET /loads.json
  def index
    @loads = Load.all
  end

  # GET /loads/1
  # GET /loads/1.json
  def show
  end

  # GET /loads/new
  def new
    @load = Load.new
    helpers.loading
  end

  # GET /loads/1/edit
  def edit
  end

  # POST /loads
  # POST /loads.json
  def create
    @load = Load.new(load_params)

    respond_to do |format|
      if @load.save
        format.html { redirect_to @load, notice: 'Load was successfully created.' }
        format.json { render :show, status: :created, location: @load }
      else
        format.html { render :new }
        format.json { render json: @load.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loads/1
  # PATCH/PUT /loads/1.json
  def update
    respond_to do |format|
      if @load.update(load_params)
        format.html { redirect_to @load, notice: 'Load was successfully updated.' }
        format.json { render :show, status: :ok, location: @load }
      else
        format.html { render :edit }
        format.json { render json: @load.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loads/1
  # DELETE /loads/1.json
  def destroy
    @load.destroy
    respond_to do |format|
      format.html { redirect_to loads_url, notice: 'Load was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load
      @load = Load.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def load_params
      params.require(:load).permit(:dateload, :quantparcel, :daypay, :hold_id,:psend)
    end
    
    def set_holds
     @holds=Hold.where('status=?',0).order(name: :asc)
    end       
    
    
end
