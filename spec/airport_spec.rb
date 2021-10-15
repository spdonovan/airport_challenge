require 'airport'

describe 'initialization' do
  subject { Airport.new }
  let (:plane) { Plane.new }
  it 'defaults capacity' do
    Airport::DEFAULT_CAPACITY.times do
      subject.land_plane(plane)
    end
    expect { subject.land_plane(plane) }.to raise_error 'Airport at capacity'
  end
end

describe Airport do
  #checking the airport has default capacity
  it 'has default capacity' do
    expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
  end
  #checking instance of airport responds to land and take off methods
  it { is_expected.to respond_to(:land_plane).with(1).argument }

  it { is_expected.to respond_to :plane_take_off }

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
      Airport::DEFAULT_CAPACITY.times do
      subject.land_plane Plane.new
      end
      expect { subject.land_plane Plane.new}.to raise_error 'Airport at capacity'
    end
  end

end
  