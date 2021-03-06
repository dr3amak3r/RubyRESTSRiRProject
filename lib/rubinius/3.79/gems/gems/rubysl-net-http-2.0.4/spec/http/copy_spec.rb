require 'net/http'
require File.expand_path('../fixtures/http_server', __FILE__)

describe "Net::HTTP#copy" do
  before(:all) do
    NetHTTPSpecs.start_server
  end

  after(:all) do
    NetHTTPSpecs.stop_server
  end

  before(:each) do
    @http = Net::HTTP.start("localhost", 3333)
  end

  after(:each) do
    @http.finish if @http.started?
  end

  it "sends a COPY request to the passed path and returns the response" do
    response = @http.copy("/request")
    response.should be_kind_of(Net::HTTPResponse)
    response.body.should == "Request type: COPY"
  end
end
