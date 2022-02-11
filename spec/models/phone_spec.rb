require 'rails_helper'

describe Phone do
  describe 'validations' do
    context 'when creating phone without number' do
      it { should validate_presence_of(:number) }
    end
  end
  
  describe 'associations' do
    context 'when creating a new phone' do
      it { should belong_to(:contact) }
    end
  end
end