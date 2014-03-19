require 'spec_helper'

describe Train_Line do

  describe 'initialize' do
    it 'is intitialized with a hash of attributes' do
      train_line = Train_Line.new({'name' => 'Red Line'})
      train_line.should be_an_instance_of Train_Line
    end

    it 'tells you the name of the station' do
      train_line = Train_Line.new({'name' => 'Red Line'})
      train_line.name.should eq 'Red Line'
    end
  end

  describe 'all' do
    it 'starts off with no stations in the array' do
      Train_Line.all.should eq []
    end
  end
  describe 'save' do
    it "lets you save train stations to the database" do
      train_line = Train_Line.new({'name' => 'Red Line', 'id' => 1})
      train_line.save
      Train_Line.all.should eq [train_line]
    end
  end
end
