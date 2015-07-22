# spec/docking_station_spec.rb
require_relative '../lib/docking_station'

require_relative '../lib/bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}
end

describe Bike do
  it { is_expected.to respond_to :working?}
end
