# spec/docking_station_spec.rb
require_relative '../lib/docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it 'releases working bike' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  describe '#release_bike' do
    it "will return an error message when no bikes" do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end
  
  it { is_expected.to respond_to(:dock).with(1).argument}

  describe '#dock' do
     it 'checking if station is full' do
     DockingStation::DEFAULT_CAPACITY.times {subject.dock Bike.new}
     expect {subject.dock Bike.new}.to raise_error "Station full"
   end

   describe '#capacity' do
      it 'does each station have a capacity' do
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
      end
     end

 end
end
