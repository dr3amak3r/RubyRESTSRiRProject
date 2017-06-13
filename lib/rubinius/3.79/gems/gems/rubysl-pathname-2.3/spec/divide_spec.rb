require 'pathname'

describe 'Pathname#/' do
  it 'returns a new Pathname' do
    p1 = Pathname.new('foo')
    p2 = Pathname.new('bar')

    (p1 / p2).should == Pathname.new('foo/bar')
  end
end
