# spec/docking_station_spec.rb
require_relative '../lib/docking_station'

require_relative '../lib/bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}
end

describe Bike do
  it 'to be wokring' do
    expect(subject.working?).to be true
  end

end
