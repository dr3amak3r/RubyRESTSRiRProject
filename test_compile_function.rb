#!/usr/bin/env  ruby
  
load 'person2.rb'

require "test/unit"
 
 
# @author Agnieszka
# test funkcji do sprawdzania i kompilacji kodu
# 
class TestCompileFunction < Test::Unit::TestCase
  
  # przyk<ladowy kod hello world powiniren sie skompilowac bez bledu 
  def test_should_compile_file
    
    dir = "./test_case/hello_world.rb"
    filename = dir
    
    result = check_and_compile_file( dir , filename )
    
    assert_equal(true, result)
    
  end
  
  # kod z bledem skladni, powinien zostac zwrocony blad
  def test_should_be_syntax_error
    
    dir = "./test_case/syntax_error.rb"
    filename = dir
    
    result = check_and_compile_file( dir , filename )
    
    assert_equal(false, result)
    
  end
  
  # kod z bledna funkcja, blad nie zostanie zwrocony na etapie kompilacji
  def test_should_compile_file_with_linker_error
    
    dir = "./test_case/linker_error.rb"
    filename = dir
    
    result = check_and_compile_file( dir , filename )
    
    assert_equal(true, result)
    
  end
  
  # funkcja powinna odczytac blad z pliku
  def test_should_read_error_from_file
    
    input = "test_should_read_error_from_file"
    outname = "test_should_read_error_from_file"
    
    errorFile ="./error/#{outname}.txt"
    file = File.open(errorFile, 'w')
    file.write(input);
    file.close();
    
    dir = "./p/test_should_read_error_from_file.rb"
    filename = "test_should_read_error_from_file.rb"
    
    result = get_compile_error( dir , filename )
    
    assert_equal(input, result)
    
  end
  
 
end