require_relative 'spec_helper'

describe Layout do

  it 'Grid should have length of 4' do
    layout = Layout.new(4, [[0,1],[1,1],[3,4]])
    expect(layout.grid.length).to eq(4)
  end

  it 'Row should have length of 4' do
    layout = Layout.new(4, [[0,1],[1,1],[3,4]] )
    expect(layout.grid[0].length).to eq(4)
  end

  # it 'does something useful' do
  #   expect(false).to eq(true)
  # end
end