#!/usr/bin/env  ruby

# @author Marcin
# @param dir: sciezka do pliku
# @param filename: nazwa pliku
# @return string : 
#
# funkcja uruchamia i wykonuje skompilowany kod za pomoca rubinius
# wynik zostanie zapisany w folderze ./output/#{outname}.out oraz 
# zwrocony przez funkcje
#
def run_and_get_result(dir,fileName)
  puts "#{dir} - uruchomienie pliku..."
  outname = fileName.split(".")[0];
  
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