require 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('students')
  end

  describe '#new' do
    it 'Should return a Classroom object' do
      expect(@classroom).to be_an_instance_of Classroom
    end
  end

  describe '#students' do
    it 'should return student in classroom' do
      expect(@classroom.students).to eql []
    end
  end
end
