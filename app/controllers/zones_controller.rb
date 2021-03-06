class ZonesController < ApplicationController
  before_action :set_zone, only: [:show, :edit, :update, :destroy]
  before_action :seed_data

  # GET /zones
  # GET /zones.json
  def index
    @zones = Zone.all.order('created_at ASC')
    @utcs = Utc.all.order('created_at ASC')
  end

  # GET /zones/1
  # GET /zones/1.json
  def show
    @zones = Zone.all.order('created_at ASC')
    @utcs = Utc.all.order('created_at ASC')
  end

  # GET /zones/new
  def new
    @zone = Zone.new
    @utcs = Utc.all.order('created_at ASC')
  end

  # GET /zones/1/edit
  def edit
  end

  # POST /zones
  # POST /zones.json
  def create
    @zone = Zone.new(zone_params)

    respond_to do |format|
      if @zone.save
        format.html { redirect_to @zone, notice: 'Zone was successfully created.' }
        format.json { render :show, status: :created, location: @zone }
      else
        format.html { render :new }
        format.json { render json: @zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zones/1
  # PATCH/PUT /zones/1.json
  def update
    respond_to do |format|
      if @zone.update(zone_params)
        format.html { redirect_to @zone, notice: 'Zone was successfully updated.' }
        format.json { render :show, status: :ok, location: @zone }
      else
        format.html { render :edit }
        format.json { render json: @zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zones/1
  # DELETE /zones/1.json
  def destroy
    @utcs = Utc.all.order('created_at DESC')
    @zone.destroy
    respond_to do |format|
      format.html { redirect_to zones_url, notice: 'Zone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zone
      @zone = Zone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def zone_params
      params.require(:zone).permit(:value, :abbr, :offset, :isdst, :text, :city_name)
    end

    def seed_data
      data = ActiveSupport::JSON.decode(File.read("zone.json"))
      data = data[0]
    end
end
