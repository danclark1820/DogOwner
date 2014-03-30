require 'spec_helper'

describe Owner do
  let(:valid_attrs){{
    first_name: 'mike',
    last_name:  'boerger',
    email:      'mike@boerger.com',
    dog_name:   'boergy',
    }}

    it 'has a first name' do
      owner = Owner.new(valid_attrs.merge(first_name: ''))
      expect(owner).to_not be_valid
      expect(owner.errors[:first_name]).to include "can't be blank"
    end

    it 'has a last name' do
      owner = Owner.new(valid_attrs.merge(last_name: ''))
      expect(owner).to_not be_valid
      expect(owner.errors[:last_name]).to include "can't be blank"
    end

    it 'has a email' do
      owner = Owner.new(valid_attrs.merge(email: ''))
      expect(owner).to_not be_valid
      expect(owner.errors[:email]).to include "can't be blank"
    end

    it 'has a valid email' do
      owner = Owner.new(valid_attrs.merge(email: 'john'))
      owner_2 = Owner.new(valid_attrs.merge(email: 'www.john'))
      owner_3 = Owner.new(valid_attrs.merge(email: '@gmail'))
      expect(owner).to_not be_valid
      expect(owner_2).to_not be_valid
      expect(owner_3).to_not be_valid
    end
  end
