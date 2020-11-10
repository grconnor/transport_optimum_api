# RSpec.describe "GET /api/v1/request", type: :request do
#   describe "with valid request" do
#     before do
#       get "/api/v1/request"
#     end
    
#     response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == "https") do |http|
#       http.request(request)

#       @data = response
#     end

#     uri = URI("https://maps.googleapis.com/maps/api/directions/json?origin=Stockholm&destination=Orebro")
#     uri.query = URI.encode_www_form({
#       "api_key" => "AIzaSyABVAA9aIKApXf2irVnl3ikBSmhO-jN25M",
#     })
#     request = Net::HTTP::Get.new(uri.request_uri)

#     it "fetches request from google api" do
#       parsed_response = JSON.parse(response).from_response(response)
#       expect(distance_from_front_end).to eq "202"
#     end
#   end
# end

# RSpec.describe "GET /api/v1/request", type: :request do

#   describe 'with valid request' do
#     before do
#       get '/api/v1/request'
#     end

#     it 'fetches request from google api' do
#       parsed_response = JSON.parse(response).from_response(response)
#       expect(parsed_response["routes"][0]["legs"][0]["distance"]["text"]).from_response(response).to eq(response)
#     end
#   end
# end