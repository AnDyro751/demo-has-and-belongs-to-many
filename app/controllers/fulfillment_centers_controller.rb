class FulfillmentCentersController < ApplicationController
  before_action :set_fulfillment_center, only: [:show, :edit, :update, :destroy]

  # GET /fulfillment_centers
  # GET /fulfillment_centers.json
  def index
    @fulfillment_centers = FulfillmentCenter.all
  end

  # GET /fulfillment_centers/1
  # GET /fulfillment_centers/1.json
  def show
  end

  # GET /fulfillment_centers/new
  def new
    @fulfillment_center = FulfillmentCenter.new
  end

  # GET /fulfillment_centers/1/edit
  def edit
  end

  # POST /fulfillment_centers
  # POST /fulfillment_centers.json
  def create
    @fulfillment_center = FulfillmentCenter.new(fulfillment_center_params)

    respond_to do |format|
      if @fulfillment_center.save
        format.html { redirect_to @fulfillment_center, notice: 'Fulfillment center was successfully created.' }
        format.json { render :show, status: :created, location: @fulfillment_center }
      else
        format.html { render :new }
        format.json { render json: @fulfillment_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fulfillment_centers/1
  # PATCH/PUT /fulfillment_centers/1.json
  def update
    respond_to do |format|
      if @fulfillment_center.update(fulfillment_center_params)
        format.html { redirect_to @fulfillment_center, notice: 'Fulfillment center was successfully updated.' }
        format.json { render :show, status: :ok, location: @fulfillment_center }
      else
        format.html { render :edit }
        format.json { render json: @fulfillment_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fulfillment_centers/1
  # DELETE /fulfillment_centers/1.json
  def destroy
    @fulfillment_center.destroy
    respond_to do |format|
      format.html { redirect_to fulfillment_centers_url, notice: 'Fulfillment center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_fulfillment_center
    @fulfillment_center = FulfillmentCenter.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def fulfillment_center_params
    params.require(:fulfillment_center).permit(:name, :description, product_ids: [])
  end
end
