require File.expand_path('../shared/eos.rb', __FILE__)
require 'strscan'

describe "StringScanner#eos?" do
  it_behaves_like(:strscan_eos, :eos?)
end
