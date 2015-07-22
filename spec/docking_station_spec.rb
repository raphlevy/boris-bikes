# spec/docking_station_spec.rb
require_relative '../lib/docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it 'releases working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  describe '#release_bike' do
    it "will return an error message when no bikes" do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument}

end
