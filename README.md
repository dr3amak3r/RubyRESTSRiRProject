# RubyRESTSRiRProject

w celu uruchomienia projektu nalezy ustawic prawa dostepu
$sudo chmod 755 server.rb
$sudo chmod 755 person4.rb

dodatkowo nalezy zainstalowac gemy
$sudo gem install Diffy
$sudo gem install Sinatra
$sudo gem install Thin


#funkcja zapisujaca dane do pliku save_to_file('wzgledna/scierzka/do/folderu', 'tresc wiadomosci string', 'nazwa_pliku.rb')	
#save_to_file('p', 'cos tam', 'nazwa_pliku.rb')

#funkcja porównujaca zawartosc pliku znajdujacych sie w folderze folder_content('wzgledna/scierdzka/do/folderu') wyniki proownania zpisane do folderu b w fotmacie html
#folder_content('p')

realizacja wysyłania pliku pojedynczego do postawionego serwera
curl --form "file=@nazwa_pliku_do_przeslania_rb" http://localhost:8082/


