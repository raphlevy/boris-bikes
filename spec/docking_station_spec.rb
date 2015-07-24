# spec/docking_station_spec.rb
require_relative '../lib/docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it 'releases working bike' do
    bike = double :bike, broken?: false
    subject.dock bike
    expect(subject.release_bike).to be bike 
  end

  describe '#release_bike' do
    it "will return an error message when no bikes" do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end

    it "will not release_bike when it is broken" do
    bike = double :bike, broken?: true
    subject.dock bike  
    expect{subject.release_bike}.to raise_error 'The bike is broken and cannot be released'  
    end

  end

  it { is_expected.to respond_to(:dock).with(1).argument}

  describe '#dock' do
    it "test if station is full" do
      subject.capacity.times { subject.dock double :bike}
      expect { subject.dock double :bike }.to raise_error 'docking station is full'  
    end
  
    it "has a capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it "accepts to dock broken bikes" do
    bike = Bike.new
    bike.report_broken
    expect {subject.dock bike}.to_not raise_error 'bike is broken and cannot be docked'
    end  
  end

  describe '#capacity' do

    it 'testing for a different capacity than default' do
      station = DockingStation.new 50
      expect(station.capacity).to eq 50
    end
  end


end
