RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get root_path
      expect(response).to have_http_status(:success)
    end

    it 'assigns @users' do
      user = User.create!(name: 'Jhon', age: 20, bio: 'nice bio')
      get root_path 
      expect(assigns(:users)).to eq([user]) 
    end  
  end

  describe 'GET /show' do
    it 'returns http success' do
      user = User.create!(name: 'Jo', age: 31, bio: 'I love cats')
      get user_path(user.id)
      expect(response).to have_http_status(:success)
    end
    
    it 'assigns @user' do
      user = User.create!(name: 'Jhonny', age: 59, bio: 'I love axes')
      get user_path(user.id)
      expect(assigns(:user)).to eq(user)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/users#new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    it 'returns http success' do
      post '/users#create', :params => { :user => { name: 'dummy' } }
      expect(response).to have_http_status(:redirect)
    end
  end

end
