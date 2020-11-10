class Api::V1::PricesController < ApplicationController

  def create
    distanceString = params[:distance]
    pricePerKm = 5 
    distanceInMeters = (distanceString.to_i)/1000

    totalPrice = (distanceInMeters)*(pricePerKm)

    render json: { prices: totalPrice }
  end
end
