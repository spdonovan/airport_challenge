require 'airport'

describe Airport do
  # checking instance of airport responds to land and take off methods
  it { is_expected.to respond_to(:land_plane).with(1).argument }

  it { is_expected.to respond_to :plane_take_off }

  it { is_expected.to respond_to(:plane) }

  it 'expects to land a plane in the airport' do
    plane = Plane.new
    subject.land_plane(plane)
    expect(subject.plane).to eq plane
  end

  it 'expects to receive take off clear from plane' do
    plane = subject.plane_take_off
    expect(plane).to be_take_off_clear
  end

end
  