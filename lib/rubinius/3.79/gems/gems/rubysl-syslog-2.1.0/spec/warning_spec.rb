require File.expand_path('../shared/log', __FILE__)
require 'syslog'

describe "Syslog.warning" do
  it_behaves_like :syslog_log, :warning
end
