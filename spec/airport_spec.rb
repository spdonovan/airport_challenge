require 'airport'

describe Airport do
  # checking instance of airport responds to land and take off methods
  it { is_expected.to respond_to(:land_plane).with(1).argument }

  it { is_expected.to respond_to :plane_take_off }

  it { is_expected.to respond_to(:plane) }

  it 'expects to land a plane in the airport' do
    plane = Plane.new
    subject.land_plane(plane)
    expect(subject.plane).to eq @planes
  end

  it 'expects to receive take off clear from plane' do
    plane = Plane.new
    expect(plane).to be_take_off_clear
  end

  describe '#plane_take_off' do
    it 'raises an error when there are no planes to take off' do
    expect { subject.plane_take_off }.to raise_error 'No planes in airport'
    end
  end

  describe '#land_plane' do
    it 'raises an error when the airport is full' do
    50.times{subject.land_plane(Plane.new)}
    expect { subject.land_plane Plane.new}.to raise_error 'Airport at capacity'
    end
  end

end
  