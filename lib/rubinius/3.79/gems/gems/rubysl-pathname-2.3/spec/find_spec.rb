require 'pathname'

describe 'Pathname#find' do
  before do
    @directory = File.expand_path('..', __FILE__)
  end

  describe 'with a block' do
    it 'yields Pathname instances to the block' do
      Pathname.new(@directory).find do |path|
        path.should be_an_instance_of(Pathname)
      end
    end
  end

  describe 'without a block' do
    it 'returns an Enumerator' do
      enum = Pathname.new(@directory).find

      enum.should be_an_instance_of(Enumerator)
    end

    it 'uses #find for the Enumerator' do
      enum = Pathname.new(@directory).find

      enum.count.should > 0
    end
  end
end
