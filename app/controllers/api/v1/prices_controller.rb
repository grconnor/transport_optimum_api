class Api::V1::PricesController < ApplicationController

  def create
    pricePerKm = 5
    distanceInKm = (params[:distance].to_i)/1000

    totalPrice = (distanceInKm)*(pricePerKm)

    render json: { price: totalPrice }
  end
end
