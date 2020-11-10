RSpec.describe 'POST /api/v1/prices', type: :request do

  describe 'Calculation of total price' do
    before do
      post '/api/v1/prices',
          params: {
            distance: 201561,
          }
    end

    it 'returns a 201 response status' do
      expect(response).to have_http_status 201
    end

    it 'returns correct distance' do
      expect(response_json).to eq 350
    end
  end
end