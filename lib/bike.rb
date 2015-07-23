class Bike

def intialize
	@broken = false
end

  def working?
  true unless @broken = true
  end

  def report_broken 
  @broken = true
  end

  def broken?
  @broken 
  end

end


