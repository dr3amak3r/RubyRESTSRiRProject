#!/usr/bin/env  ruby
  
load 'person3.rb'

require "test/unit"
 
 
# @author Marcin
#
# test funkcji do uruchamiania kodu
# 
class TestRunAndGetResultFunction < Test::Unit::TestCase
  
  #Poprawny kod hello world powinien sie uruchomić poprawnie 
  def test_should_run_file
    
    dir = "./output/hello_world.rbc"
    filename = "hello_world..rbc"
    
    result = run_and_get_result( dir , filename )
 String str="Hello world\n"
    assert_equal(str, result)
    
  end

  #Kod z błedem powinien zwrócić ten sam błąd
  def test_should_return_the_same_error
	dir = "./output/linker_error.rbc"
    filename = "linker_error.rbc"

    String str="                       main # Rubinius::Loader at core/loader.rb:860
                      evals # Rubinius::Loader at core/loader.rb:646
                       eval # Kernel(Rubinius::Loader) at core/kernel.rb:1132
           call_on_instance # Rubinius::BlockEnvironment at core/block_environment.rb:147
          { } in __script__ # Object at -e:1
           require_compiled . Rubinius::CodeLoader at core/code_loader.rb:586
           require_compiled # Rubinius::CodeLoader at core/code_loader.rb:476
                 __script__ # Object at output/linker_error.rbc:1
   putsxxx (method_missing) # Kernel(Object) at core/zed.rb:1413

private method `putsxxx' called on an instance of Object. (NoMethodError)

An exception occurred evaluating command line code\n"
	end
 
end
