require 'spec_helper'

describe Student do
    before :each do
        @student = Student.new(23, "name", "classroom")
    end

    describe "#new" do
        it "Should take 3 parameters and return the student object" do
            expect(@student).to be_an_instance_of Student
        end
    end

    describe "#age" do
        it "should return a correct age" do
            expect(@student.age).to eql 23
        end
    end
end