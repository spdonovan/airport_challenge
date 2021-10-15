require_relative 'plane'

class Airport
  DEFAULT_CAPACITY = 50

  #this writes a method on any instances of the Airport class
  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def land_plane(plane)
    fail 'Airport at capacity' if full?
    @planes << plane
  end

  def plane_take_off
    fail 'No planes in airport' if empty?
    @planes.pop
  end

  private

  attr_reader :planes

  def full?
    planes.count >= capacity
  end

  def empty?
    planes.empty?
  end


end