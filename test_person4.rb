#!/usr/bin/env  ruby
  
require "test/unit"

load 'person4.rb'

# @author Kamil Różański

class TestCompileFunction < Test::Unit::TestCase

	# sprawdzanie czy zapisana została paczka zip po przez porównanie ścieżek wzglednych
	def test_zip_it
		server = Person4.new()
		path = "#{File.expand_path(__FILE__)}"
		path = path.split("test_person4.rb")[0]
		result = server.zip_it(path) 
		path << '/raport.zip'	
		assert_equal(path, result)
	end

	# sprawdza czy istnieje folder
	def test_directory_exists
		server = Person4.new()
		dir = "p"
		result = server.directory_exists(dir)
		assert_equal(true, result)
	end
	
	#def text_save_to_html
	#end
	
	# sprawdza czy generowana jest inna nazwa pliku
	def test_rename_random
		server = Person4.new()
		filename = "dziala.rb"
		result = server.rename_random(filename)
		assert_not_equal(filename, result)
	end
	# sprawdza czy plik istnieje 
	def test_if_file_exists
		server = Person4.new()
		dir = "p"
		filename = "hello.rb"
		result = server.if_file_exists(dir, filename)
		assert_equal(1, result)
	end
	# sprawdza czy plik nie istnieje
	def test_if_file_not_exists
		server = Person4.new()
		dir = "b"
		filename = "hello.rb"
		result = server.if_file_exists(dir, filename)
		assert_equal(0, result)
	end
	# sprawdzanie czy dana tresc została poprawnie zapisana do pliku
	def test_save_to_file
		server = Person4.new()
		dir = "p"
		string = "test sprawdzenia zapisu"
		filename = "text.rb"
		result = server.save_to_file(dir, string, filename)
		dir << "/#{filename}"
		file = File.open(dir, 'r')
		result_string = file.read()
		file.close()
		assert_equal(result_string, result)
	end
	# sprawdzenie czy tablica plików z rozszerzeniem .rb jest identyczna 
	def test_folder_content
		server = Person4.new()
		dir = "p"
		result = server.folder_content(dir)	
		file_array = Dir.entries(dir)
		puts "#{file_array.size} plików w folderze /#{dir}."
		rb_file_array = []
		for element in file_array do
			if element.include? ".rb"
				rb_file_array << element
			end
		end
		assert_equal(rb_file_array, result)
	end
	
	def test_should_send_file
		dir = "p"
		filename = "hello.rb"
		server = Person4.new()
		system( "curl --form \"file=@#{dir}/#{filename}\" http://localhost:8080" );
		result = server.if_file_exists(dir, filename)
		assert_equal(1, result)
	end
end
