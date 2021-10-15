require 'airport'
require 'plane'

  describe 'landing a plane' do
    it 'can land a plane' do

      plane = Plane.new
      airport = Airport.new
      airport.land_plane(plane)
      airport.plane
      end
    end