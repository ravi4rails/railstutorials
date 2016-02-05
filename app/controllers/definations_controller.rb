class DefinationsController < ApplicationController
  before_action :set_defination, only: [:show, :edit, :update, :destroy]

  # GET /definations
  # GET /definations.json
  def index
    @definations = Defination.all
  end

  # GET /definations/1
  # GET /definations/1.json
  def show
  end

  # GET /definations/new
  def new
    @defination = Defination.new
  end

  # GET /definations/1/edit
  def edit
  end

  # POST /definations
  # POST /definations.json
  def create
    @defination = Defination.new(defination_params)

    respond_to do |format|
      if @defination.save
        format.html { redirect_to @defination, notice: 'Defination was successfully created.' }
        format.json { render :show, status: :created, location: @defination }
      else
        format.html { render :new }
        format.json { render json: @defination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /definations/1
  # PATCH/PUT /definations/1.json
  def update
    respond_to do |format|
      if @defination.update(defination_params)
        format.html { redirect_to @defination, notice: 'Defination was successfully updated.' }
        format.json { render :show, status: :ok, location: @defination }
      else
        format.html { render :edit }
        format.json { render json: @defination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /definations/1
  # DELETE /definations/1.json
  def destroy
    @defination.destroy
    respond_to do |format|
      format.html { redirect_to definations_url, notice: 'Defination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defination
      @defination = Defination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def defination_params
      params.require(:defination).permit(:keyword, :description, :know_more)
    end
end
