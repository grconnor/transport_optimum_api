RSpec.describe 'POST /api/v1/prices', type: :request do

  describe 'Calculation of total price' do
    before do
      post '/api/v1/prices',
          params: {
            distance: 201561,
          }
    end

    it 'returns a 200 response status' do
      expect(response).to have_http_status 200
    end

    it 'returns correct calculation' do
      expect(JSON.parse(response.body)["price"]).to eq 1005
    end
  end
end