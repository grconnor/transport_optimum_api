class Api::V1::RequestController < ApplicationController

  def index
    url = "https://maps.googleapis.com/maps/api/directions/json?key=AIzaSyABVAA9aIKApXf2irVnl3ikBSmhO-jN25M&origin=Stockholm&destination=Orebro"
    response = RestClient.get(url)
    parsed_response = JSON.parse(response)
  end
end
