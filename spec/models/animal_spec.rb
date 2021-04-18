require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'is valid with valid attributes' do
    lion = Animal.create common_name: 'Lion', latin_name: 'Panthera leo', kingdom: 'Animalia'
    expect(lion).to be_valid
  end
  it 'is valid with valid attributes' do
    lion = Animal.create latin_name: 'Panthera leo', kingdom:'Animalia'
    expect(lion.errors[:common_name]).to_not be_empty
  end
  it 'is valid with valid attributes' do
    lion = Animal.create common_name: 'Panthera leo', kingdom:'Animalia'
    expect(lion.errors[:latin_name]).to_not be_empty
  end
  it 'can not have the exact same common name as latin name' do
    lion = Animal.create common_name: 'Lion', latin_name: 'Lion', kingdom:'Animalia'
    expect(lion.errors[:latin_name]).to_not be_empty
  end
  it 'must have unique common_name' do
    lion = Animal.create common_name: 'Lion', latin_name: 'Panthera leo', kingdom:'Animalia'
    dog = Animal.create common_name: 'Lion', latin_name:'canine', kingdom: 'Animalia'
    expect(dog.errors[:common_name]).to_not be_empty
  end
  it 'must have unique latin_name' do
    lion = Animal.create common_name: 'Lion', latin_name: 'Panthera leo', kingdom:'Animalia'
    dog = Animal.create common_name: 'Dog', latin_name:'Panthera leo', kingdom: 'Animalia'
    expect(dog.errors[:latin_name]).to_not be_empty
  end
end
