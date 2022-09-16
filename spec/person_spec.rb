require 'spec_helper'

describe Person do
  before :each do
    @person = Person.new('age', 'name')
  end

  describe '#new' do
    it 'Should take 3 parameters and return Person object' do
      expect(@person).to be_an_instance_of Person
    end
  end

  describe '#age' do
    it 'should return the correct age' do
      expect(@person.age).to eql 'age'
    end
  end

  describe '#name' do
    it 'should return the correct name' do
      expect(@person.name).to eql 'name'
    end
  end

  describe '#rentals' do
    it 'Should has a rental' do
      expect(@person.rentals).to eql []
    end
  end

  describe '#parent_permission' do
    it 'return parent_permission to be true' do
      expect(@person.parent_permission).to be true
    end
  end

  describe '#id' do
    it 'return an id to be integer' do
      expect(@person.id).to be_an_instance_of Integer
    end
  end
end
