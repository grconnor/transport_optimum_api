require "rest-client"
require "json"

RSpec.describe "GET /api/v1/request", type: :request do

  describe 'with valid credentials' do
    before do
      get '/api/v1/request'
    end

    it 'fetches request from google api' do
        parsed_response = JSON.parse(response)
        expect(parsed_response["routes"][0]["legs"][0]["distance"]["text"]).to eq "202 km"
    end
  end
end