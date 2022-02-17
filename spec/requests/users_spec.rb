RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end

    it 'assigns @users' do
      user = User.create!(name: 'Jhon', age: 20, bio: 'nice bio')
      get '/users' 
      expect(assigns(:users)).to eq([user]) 
    end  
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end
    
    it 'assigns @user' do
      user = User.create!(name: 'Jhonny', age: 59, bio: 'I love axes')
      get '/users'
      expect(assigns(:users)).to eq([user])
    end
  end
end
