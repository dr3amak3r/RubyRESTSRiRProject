require 'pathname'

describe 'Pathname.birthtime' do
  platform_is :osx do
    it 'returns a Time instance' do
      time = Pathname.birthtime(__FILE__)

      time.should be_an_instance_of(Time)
    end
  end
end

describe 'Pathname#birthtime' do
  platform_is :osx do
    it 'returns a Time instance' do
      time = Pathname.new(__FILE__).birthtime

      time.should be_an_instance_of(Time)
    end
  end
end
