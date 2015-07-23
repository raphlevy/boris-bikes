require_relative 'bike'

class DockingStation


  def release_bike
  	 raise 'No bikes available' unless @bike
    @bike
  end

  def dock bike
  	 
  	 fail "Station full" if @bike
  	@bike = bike 

  end
end
