# frozen_string_literal: true
require 'rails_helper'

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
      get users_new_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    context 'when creating a user with valid params' do
      it 'should create a new user' do
        expect { post users_path({ user: { name: 'dummy' } }) }.to change { User.count }.by(1)
      end
    end

    context 'when creating a user without valid params' do
      it 'shloud not create a new user' do
        expect { post users_path({ user: { name: '' } }) }.to_not change { User.count }
      end
    end
  end

end
