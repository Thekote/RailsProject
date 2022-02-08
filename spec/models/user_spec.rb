require 'rails_helper'

describe User do
  describe 'validations' do
    context 'when creating user without name' do
      it { should validate_presence_of(:name) }
    end
    
    context 'when creating user' do
      subject { User.new(name: 'user') }
      it { should validate_uniqueness_of(:name).case_insensitive }
    end
  end

  describe 'associations' do
    it { should have_many(:contacts) }
  end
end