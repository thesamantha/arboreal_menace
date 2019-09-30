class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # GET /listings.json
  def index
    listings = Listing.all
    render json: listings
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
      render json: listing
  end

  # GET /listings/new
  def new
    listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    binding.irb
    respond_to do |format|
      if @listing.save
        format.json { render :show, status: :created, location: @listing }
      else
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    listing = Listing.find(params[:id])
    binding.irb
    if listing.update(listing_params)
      render json: listing
    else
      render json: listing.errors
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:title,  :logo_loc, :logo_dsc, fields: [], levels: [], work_types: [], locations: [], shifts: [])
    end
end
