load 'serwer_K1.rb'

require "test/unit"

# @author Agata
class TestK1 < Test::Unit::TestCase

def test_get_dir_doesnt_exist
# testuje czy istnieje folder o nazwie Random, gdzie nie ma takiego folderu
    result = get_files("Random")
    puts result
    assert_equal([] , result)
end

def test_get_dir
# testuje czy istanieje folder o nazwie SRiR - gdzie taki folder istnieje
    result = get_files("SRiR")
    puts result
    assert_equal(["<h4><a href=\"download/SRiR/hello-world.rb\"/>hello-world.rb</a></h4>","<h4><a href=\"download/SRiR/hello.rb\"/>hello.rb</a></h4>"] , result)
end

def test_get_file_hello_world
# testuje czy w folderze SRiR istnieje plik hello-world.rb - gdzie taki plik w takim folderze istnieje
    result = if_file_exists("SRiR","hello-world.rb")
    puts result
    assert_equal(true , result)
end

def test_get_file_not_hello
# testuje czy w folderze SRiR istnieje plik not_hello.rb - gdzie taki plik w takim folderze nie istnieje
    result = if_file_exists("SRiR","not_hello.rb")
    puts result
    assert_equal(false , result)
end

end
