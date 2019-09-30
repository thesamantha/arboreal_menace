class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.all
    render json: @listings
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
      render json: @listing
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      render json: @listing, status: :created
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.json { render :show, status: :created, location: @listing }
      else
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    render json: :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:title,  :logo_loc, :logo_dsc, fields: [], levels: [], work_types: [], locations: [], shifts: [])
    end
end
