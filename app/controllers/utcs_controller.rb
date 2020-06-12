class UtcsController < ApplicationController
  before_action :set_utc, only: [:show, :edit, :update, :destroy]

  # GET /utcs
  # GET /utcs.json
  def index
    @utcs = Utc.all
  end

  # GET /utcs/1
  # GET /utcs/1.json
  def show
    @zones = Zone.all
    @utcs = Utc.all
  end

  # GET /utcs/new
  def new
    @utc = Utc.new
  end

  # GET /utcs/1/edit
  def edit
  end

  # POST /utcs
  # POST /utcs.json
  def create
    @utc = Utc.new(utc_params)

    respond_to do |format|
      if @utc.save
        format.html { redirect_to @utc, notice: 'Utc was successfully created.' }
        format.json { render :show, status: :created, location: @utc }
      else
        format.html { render :new }
        format.json { render json: @utc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utcs/1
  # PATCH/PUT /utcs/1.json
  def update
    respond_to do |format|
      if @utc.update(utc_params)
        format.html { redirect_to @utc, notice: 'Utc was successfully updated.' }
        format.json { render :show, status: :ok, location: @utc }
      else
        format.html { render :edit }
        format.json { render json: @utc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utcs/1
  # DELETE /utcs/1.json
  def destroy
    @utc.destroy
    respond_to do |format|
      format.html { redirect_to utcs_url, notice: 'Utc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utc
      @utc = Utc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def utc_params
      params.require(:utc).permit(:country, :city)
    end
end
