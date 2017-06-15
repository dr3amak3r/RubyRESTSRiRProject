#!/usr/bin/env  ruby

load 'person5.rb'

# @author Marcin
#
# Funkcja uruchamia i wykonuje skompilowany kod 
#
# Funkcja uruchamia i wykonuje skompilowany kod za pomocą rubinius
# Wynik zostanie zapisany w folderze ./output/#{outname}.out oraz 
# zwrócony przez funkcje
#
# @param dir[String] scieżka do pliku
# @param filename [String] nazwa pliku
# @return [String] wynik wykonanego programu  
def run_and_get_result(dir,fileName)
  puts "#{dir} - uruchomienie pliku..."
  outname = fileName.split(".")[0];
  
  #Michał
  if(safetyCheck(dir)==false)
    puts "Niebezpieczny plik"
    return
  end
  
   #polecenie do uruchamia
   runCommand = "./lib/rubinius/3.79/bin/rbx -I. -e \"Rubinius::CodeLoader.require_compiled './output/#{outname}'\" > ./output/#{outname}.out 2>&1" 
   puts runCommand
  
   result = system(runCommand)
   puts "uruchomienie zakonczone #{result}"
       
   #wczytanie zwroconej wartosci z pliku
   errorFile ="./output/#{outname}.out"
   file = File.open(errorFile, 'r')
   result = file.read();
   file.close();     
  return result;  
end
