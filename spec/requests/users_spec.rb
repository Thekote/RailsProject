RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET /new" do
  #   it "returns http success" do
  #     get "/users#new"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "POST /create" do
  #   it "returns http success" do
  #     post "/users#create"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /edit" do
  #   it "returns http success" do
  #     get "/users#edit"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "PUT /update" do
  #   it "returns http success" do
  #     put "/users#update"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "DELETE /destroy" do
  #   it "returns http success" do
  #     delete "/users#destroy"
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end
