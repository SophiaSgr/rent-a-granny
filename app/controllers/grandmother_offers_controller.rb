class GrandmotherOffersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    
    if params[:query].present?
      @grandmother_offers = GrandmotherOffer.near(params[:query], 300)
    else
      @grandmother_offers = GrandmotherOffer.all
    end
    
    @markers = @grandmother_offers.geocoded.map do |granny|
      {
        lat: granny.latitude,
        lng: granny.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { granny: granny }),
        image_url: helpers.asset_url("https://t3.ftcdn.net/jpg/02/74/86/30/360_F_274863032_xgwvNFF0u9vZAGPmtvCRHdGxIeeDLAb9.jpg")
      }
    end
  end

  def show
    @grandmother_offer = GrandmotherOffer.find(params[:id])
    @booking = Booking.new
  end

  def new
    @grandmother_offer = GrandmotherOffer.new
  end

  def create
    @grandmother_offer = GrandmotherOffer.new(grandmother_offer_params)
    @grandmother_offer.user_id = current_user.id
    if @grandmother_offer.save
      redirect_to grandmother_offer_path(@grandmother_offer)
    else
      render :new
    end
  end

  def edit
    @grandmother_offer = GrandmotherOffer.find(params[:id])
  end

  def update
    @grandmother_offer = GrandmotherOffer.find(params[:id])
    if @grandmother_offer.update(params[grandmother_offer_params])
      redirect_to grandmother_offer_path(@grandmother_offer), notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @grandmother_offer = GrandmotherOffer.find(params[:id])
    @grandmother_offer.destroy
    redirect_to grandmother_offers_path, notice: 'Offer was successfully destroyed.'
  end

  private

  def grandmother_offer_params
    params.require(:grandmother_offer).permit(:first_name, :last_name, :username, :activity_type, :description, :city, :specialty, :character, :return_offer_wish, photos: [])
  end
end
