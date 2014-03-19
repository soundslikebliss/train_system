require 'spec_helper'

describe Stops do

  describe 'initialize' do
    it 'is intitialized with a hash of attributes' do
      stop = Stops.new({'train_line_id' => 1, 'train_station_id' => 2})
      stop.should be_an_instance_of Stops
    end

    it 'tells you what stations the line stops at' do
      stop = Stops.new({'train_line_id' => 1, 'train_station_id' => 2})
      stop.train_line_id.should eq 1
      stop.train_station_id.should eq 2
    end
  end

  describe 'all' do
    it 'starts off with no stations in the array' do
      Stops.all.should eq []
    end
  end

  describe 'save' do
    it "lets you save train stations to the database" do
      stop = Stops.new({'train_line_id' => 1, 'train_station_id' => 2})
      stop.save
      Stops.all.should eq [stop]
    end
  end
end


