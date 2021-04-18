require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'is valid with valid attributes' do
    lion = Animal.create common_name: 'Lion', latin_name: 'Panthera leo', kingdom: 'Animalia'
    sighting1 = lion.sightings.create date: '2020-02-02 01:00:00', latitude: '20 deg S', longitude: '50 deg E'
    expect(sighting1).to be_valid
  end
  it 'is valid with valid attributes' do
    lion = Animal.create common_name: 'Lion', latin_name: 'Panthera leo', kingdom: 'Animalia'
    sighting1 = lion.sightings.create latitude: '20 deg S', longitude: '50 deg E'
    expect(sighting1.errors[:date]).to_not be_empty
  end
  it 'is valid with valid attributes' do
    lion = Animal.create common_name: 'Lion', latin_name: 'Panthera leo', kingdom: 'Animalia'
    sighting1 = lion.sightings.create date: '2020-02-02 01:00:00', longitude: '50 deg E'
    expect(sighting1.errors[:latitude]).to_not be_empty
  end
  it 'is valid with valid attributes' do
    lion = Animal.create common_name: 'Lion', latin_name: 'Panthera leo', kingdom: 'Animalia'
    sighting1 = lion.sightings.create date: '2020-02-02 01:00:00', latitude: '20 deg S'
    expect(sighting1.errors[:longitude]).to_not be_empty
  end


end
