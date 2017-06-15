require "test/unit"

load person5.rb

class TestSecurity < Test::Unit::TestCase


  def test_simple_code
    result = safetyCheck('temporary.rb')
    puts result
    assert_equal(false, result)
  end


  def test_harmful_code
    result = safetyCheck('ExternalCode.rb')
    assert_equal(false,result)
    puts result
  end


  def test_harmful_code2
    result = safetyCheck('ExternalCode.rb')
    puts result
    assert_equal(false,result)
  end
end