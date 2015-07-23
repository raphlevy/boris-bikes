require_relative 'bike'

class DockingStation

	DEFAULT_CAPACITY = 20

	attr_reader :capacity

def initialize 
	@bike = []
	@capacity = DEFAULT_CAPACITY
end

  def release_bike
  	 raise 'No bikes available' if empty?
  	 @bike.pop
  end

  def dock bike
  	fail 'docking station is full' if full?
    @bike.push bike
  end

  private

  attr_reader :bikes

  def empty? 
  @bike.size == 0
  end

  def full? 
 @bike.size >= @capacity
  end


end
