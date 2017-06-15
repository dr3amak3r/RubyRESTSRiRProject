
require 'sinatra' 
require 'json' 

set :port, 8080 
set :environment, :production

# @author Agata
#
# Sprawdza czy folder istnieje
#
# Sprawdza czy folder z którego maja być pobierane i wyświetlane pliki istnieje
#
# @param dir [String] nazwa folderu
# @return [Boolean] zwraca true jeśli folder istnieje, a false jeśli nie
def directory_exists(dir)
	Dir.mkdir(dir) unless ret = File.exists?(dir)
	return ret
end

# @author Agata
#
# Sprawdza czy plik istnieje
#
# Sprawdza czy plik, który ma byc pobrany istnieje
#
# @param dir [String] nazwa folderu
# @param fileName [String] nazwa pliku
# @return [Boolean] zwraca true jeśli plik istnieje, a false jeśli nie
def if_file_exists(dir, fileName)
  begin
	file_array = Dir.entries(dir)
	for element in file_array do
		if(element == fileName)
			return true
		end
	end
	return false
  rescue '<h2>Przepraszamy. Następiło niepowodzenie</h2>'
  end
end

# @author Agata
#
# Pobiera wybrany plik
#
# Pobrany zostaje plik do domyślengo folderu pobierania
#
# @param dir [String] nazwa folderu
# @param filename [String] nazwa pliku do pobrania
# @return [String] zwraca formę tekstową w formacie html do wyświetlenia na stronie
def get_file (dir, filename)
  if if_file_exists(dir, filename) == true
  send_file "./#{dir}/#{filename}", :filename => filename, :type => 'Application/octet-stream'
else
  '<h2>Przepraszamy. Następiło niepowodzenie</h2>'
  end
  end

# @author Agata
#
# Zwraca listę z nazwami plików w odpowiednim folderze 
#
# Z folderu pobierane są dostępne do pobrania pliki, a nazwy tyhc plików są d razu konwertowane na zapis przy pomocy skłądni html 
#
# @param dir [String] nazwa folderu
# @return [String] zwraca formę tekstową w formacie html do wyświetlenia na stronie
def get_files (dir)
if directory_exists(dir) == true
  for plik in Dir.glob("./#{dir}/*.*").map{|f| '<h4><a href="download/' + dir + '/' + f.split('/').last + '"/>' + f.split('/').last + '</a></h4>'}
    plik +'\n'
  end
 
else
  return false;
end
end



get '/download/?:dir?/?:filename?' do 
  'Hello'
  get_file("#{params[:dir]}","#{params[:filename]}" )
end

get '/:dirname' do |dirname|
 get_files(dirname)
end