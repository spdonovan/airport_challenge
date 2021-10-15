require 'airport'

describe Airport do
  # checking instance of airport responds to land and take off methods
  it { is_expected.to respond_to :land_plane }

  it { is_expected.to respond_to :plane_take_off }

  it 'expects to receive take off clear from plane' do
    plane = subject.plane_take_off
    expect(plane).to be_take_off_clear
  end

end
  