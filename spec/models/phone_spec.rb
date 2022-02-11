# frozen_string_literal: true

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

  describe 'phone main update callback' do
    context 'when successful update default phone' do
      let(:user){User.create name: 'user1', age: 10, bio: 'nice bio'}
      let(:contact){Contact.create name: 'contact3', birthday: '10/05/1995', user_id: user.id}
      let(:phone){Phone.create number: '1237896578', label: 'home', is_default: false, contact_id: contact.id}
      let(:phone2){Phone.create number: '9999999999', label: 'home', is_default: true, contact_id: contact.id}

      it 'should update all contact phones when a new phone is set as default' do
        phone3 = Phone.new number: '999988888', label: 'home', is_default: true, contact_id: contact.id      
        expect(phone.is_default).to be(false)
        expect{phone3.save}.to change(phone2, :is_default)
        expect(phone3.is_default).to be(true)
      end
    end  
  end

end
