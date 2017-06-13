#!/usr/bin/env  ruby
  
require "test/unit"
 
 
# @author Agnieszka
# 
# przed testem nalezy uruchomic server  
#
class TestSystemu < Test::Unit::TestCase
  
  # @author Agnieszka
  # wys<lanie pliku na server powinno zakonczyc sie powodzeniem
  def test_should_send_file
     result = system( "curl --form \"file=@./test_case/hello_world.rb\" http://localhost:8080" );
     assert_equal(true, result)
  end
 
end