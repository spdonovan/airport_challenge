require 'airport'

describe Airport do
  # checking instance of airport responds to land and take off methods
  it { is_expected.to respond_to :land_plane }

  it { is_expected.to respond_to :plane_take_off }

end
  