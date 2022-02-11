# frozen_string_literal: true

require 'rails_helper'


describe Contact do
  let(:user) { User.create!(name: "user") }
  describe 'validations' do
    context 'when creating contact without name' do
      it { should validate_presence_of(:name) }
    end
		
	  context 'when creating contact' do
      subject { Contact.create!(name:"contact", user_id: user.id) }
      it { should validate_uniqueness_of(:name).case_insensitive.scoped_to(:user_id) }
    end
  end

  describe 'associations' do
    context 'when creating a new contact' do
      it { should belong_to(:user) }
      it { should have_many(:phones) }
    end
  end
end
