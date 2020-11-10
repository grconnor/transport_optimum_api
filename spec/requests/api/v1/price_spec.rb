# require "rails_helper"

# RSpec.describe 'POST /api/v1/price', type: :request do

#   describe 'test' do

#     it 'returns 202 distance' do
#       expect(distance).to eq 202
#     end

#     it 'calculates the correct price' do
#       expect().
#     end
    
#   end
# end

RSpec.describe 'POST /api/v1/calculations', type: :request do

  describe 'with valid credentials' do
    before do
      post '/api/v1/calculations',
          params: {
            distance: 202000,
          }
    end

    it 'returns 202 distance' do
      expect(distance).to eq 202000
    end

    it 'calculates the correct price' do
      expect().
    end

    it 'returns 200 response status' do
      expect(response).to have_http_status 200
    end

  end
end