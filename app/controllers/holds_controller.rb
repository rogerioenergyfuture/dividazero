class HoldsController < ApplicationController
  before_action :authenticate_user!  
  before_action :set_hold, only: [:show, :edit, :update, :destroy]
  before_action :set_companies, only: [:new,:edit, :update, :index,:search]  

  # GET /holds
  # GET /holds.json
  def index
    @holds = Hold.all
  end

  # GET /holds/1
  # GET /holds/1.json
  def show
  end

  # GET /holds/new
  def new
    @hold = Hold.new
  end

  # GET /holds/1/edit
  def edit
  end

  # POST /holds
  # POST /holds.json
  def create
    @hold = Hold.new(hold_params)

    respond_to do |format|
      if @hold.save
        format.html { redirect_to @hold, notice: 'Hold was successfully created.' }
        format.json { render :show, status: :created, location: @hold }
      else
        format.html { render :new }
        format.json { render json: @hold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holds/1
  # PATCH/PUT /holds/1.json
  def update
    respond_to do |format|
      if @hold.update(hold_params)
        format.html { redirect_to @hold, notice: 'Hold was successfully updated.' }
        format.json { render :show, status: :ok, location: @hold }
      else
        format.html { render :edit }
        format.json { render json: @hold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holds/1
  # DELETE /holds/1.json
  def destroy
    @hold.destroy
    respond_to do |format|
      format.html { redirect_to holds_url, notice: 'Hold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hold
      @hold = Hold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hold_params
      params.require(:hold).permit(:code, :name, :mobile, :email, :status, :predefaulting, :company_id)
    end


    def set_companies
     @companies=Company.where('status=?',0).order(name: :asc)
    end   
    
end
