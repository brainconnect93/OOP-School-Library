require 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new('age', 'name', 'specialization')
  end

  describe '#new' do
    it 'Should take 3 parameters and return Teacher object' do
      expect(@teacher).to be_an_instance_of Teacher
    end
  end

  describe '#age' do
    it "should return teacher's age" do
      @teacher.age = 46
      expect(@teacher.age).to eql 46
    end
  end

  describe '#name' do
    it "should return teacher's name" do
      @teacher.name = 'Afolabi'
      expect(@teacher.name).to eql 'Afolabi'
    end
  end

  describe '#specialization' do
    it "should return teacher's specialization" do
      @teacher.specialization = 'Computer Science'
      expect(@teacher.specialization).to eql 'Computer Science'
    end
  end

  describe '#can_use_service' do
    it 'should return can_use_service to be true' do
      expect(@teacher.can_use_service).to be true
    end
  end
end
