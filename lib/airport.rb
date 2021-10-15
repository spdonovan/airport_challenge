require_relative 'plane'

class Airport

  #this writes a method on any instances of the Airport class
  attr_reader :plane

  def land_plane(plane)
    @plane = plane
  end

  def plane_take_off
    Plane.new
  end


end