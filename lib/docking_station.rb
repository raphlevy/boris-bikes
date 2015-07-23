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
  	 
  	fail "Station full" if full?
  	@bike << bike

  end


	private

	def empty?
		@bike.size == 0
	end

	def full?
		@bike.size >= DEFAULT_CAPACITY
	end
end