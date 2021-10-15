require 'airport'

describe Airport do
  it 'responds to land_plane' do
    expect(subject).to respond_to :land_plane
  end

  it 'responds to plane_take_off' do
    expect(subject).to respond_to :plane_take_off
  end
  
end