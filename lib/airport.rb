require_relative 'plane'

class Airport

  #this writes a method on any instances of the Airport class
  attr_reader :plane

  def initialize
    @planes = []
  end

  def land_plane(plane)
    fail 'Airport at capacity' if @planes.count >= 50
    @planes << plane
  end

  def plane_take_off
    fail 'No planes in airport' if @planes.empty?
    @planes.pop
  end


end