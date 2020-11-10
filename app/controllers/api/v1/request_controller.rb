# require "net/http"

# class Api::V1::RequestController < ApplicationController
#   def index
#     uri = URI("https://maps.googleapis.com/maps/api/directions/json?origin=Stockholm&destination=Orebro")
#     params = { :key => Api }
#     headers = { }
#     uri.query = URI.encode_www_form(params)

#     # render json: { TestResponse: "202 km" }
#   end
# end

# uri = URI("https://maps.googleapis.com/maps/api/directions/json?origin=Stockholm&destination=Orebro")
# uri.query = URI.encode_www_form({
#   "api_key" => "AIzaSyABVAA9aIKApXf2irVnl3ikBSmhO-jN25M",
# })
# request = Net::HTTP::Get.new(uri.request_uri)
