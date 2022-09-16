require 'spec_helper'

describe Student do
  before :each do
    @student = Student.new('age', 'Science')
  end

  describe '#new' do
    it 'Should take 2 parameters and return the student object' do
      expect(@student).to be_an_instance_of Student
    end
  end

  describe '#age' do
    it 'should return a correct age' do
      expect(@student.age).to eql 'age'
    end
  end

  describe '#name' do
    it "should return the name 'Unknown'" do
      expect(@student.name).to eql 'Unknown'
    end

    it "setting student's name to 'Afolabi'" do
      @student.name = 'Afolabi'
      expect(@student.name).to eql 'Afolabi'
    end
  end

  describe '#classroom' do
    it "Student should have a classroom to be 'Science'" do
      expect(@student.classroom).to eql 'Science'
    end
  end

  describe '#play_hooky' do
    it 'Student should have access to play hooky' do
      expect(@student.play_hooky).to eql("¯\(ツ)/¯")
    end
  end
end
