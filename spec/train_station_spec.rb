require 'spec_helper'

describe Train_Station do

  describe 'initialize' do
    it 'is intitialized with a hash of attributes' do
      train_station = Train_Station.new({'name' => 'Tigard'})
      train_station.should be_an_instance_of Train_Station
    end

    it 'tells you the name of the station' do
      train_station = Train_Station.new({'name' => 'Tigard'})
      train_station.name.should eq 'Tigard'
    end
  end

  describe 'all' do
    it 'starts off with no stations in the array' do
      Train_Station.all.should eq []
    end
  end
  describe 'save' do
    it "lets you save train stations to the database" do
      train_station = Train_Station.new({'name' => 'Tigard', 'id' => 1})
      train_station.save
      Train_Station.all.should eq [train_station]
    end
  end
end


