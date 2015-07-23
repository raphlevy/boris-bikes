require_relative 'bike'

class DockingStation

def initialize 
	@bike = []
end

  def release_bike
  	 raise 'No bikes available' unless @bike.empty?
  	 @bike.pop
  end

  def dock bike
  	raise 'docking station is full' if @bike.size >= 20
    @bike.push bike
  end
end
