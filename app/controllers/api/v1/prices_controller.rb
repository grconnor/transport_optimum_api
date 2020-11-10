class Api::V1::PricesController < ApplicationController

  def create
    pricePerKm = 5 
    distanceString = params[:distance]
    distanceInMeters = (params[:distance].to_i)/1000

    totalPrice = (distanceInMeters)*(pricePerKm)

    parsedTotalPrice = totalPrice

    render json: { prices: totalPrice }
  end
end
