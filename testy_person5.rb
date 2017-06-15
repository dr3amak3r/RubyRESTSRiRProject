#!/usr/bin/env  ruby
load 'person5.rb'

require "test/unit"


# @author Michał
# test funkcji odpowiedzialnej za bezpieczną kompilację
#
class TestSecurity < Test::Unit::TestCase


  #Kod który jest bezpieczny dla działania systemu, powinien zwrócić true
  def test_simple_code
    result = safetyCheck('./test_case/hello_world.rb')
    puts result
    assert_equal(true, result)
  end

  #Kod próbujący sformatować dysk, nie powienien się skompilować i zwrócić false
  def test_harmful_code
    result = safetyCheck('./test_case/format_system.rb')
    assert_equal(false,result)
    puts result
  end

  #Kod wywołujący kolejny podprogram powinien zwrócić false
  def test_harmful_code2
    result = safetyCheck('./test_case/Invoke_another.rb')
    puts result
    assert_equal(false,result)
  end
end
