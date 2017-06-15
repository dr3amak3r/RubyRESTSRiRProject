#!/usr/bin/env  ruby

# author Agnieszka

# sprawdza poprawnosc skladni przeslanego pliku. Jesli wystapil blad to zwraca false
# i zostaje on zapisany w katalogu ./error/{filename}.txt, w przeciwnym razie program 
# probuje skompilowac plik za pomoca rubinius. Jesli kompilacja sie powiedzie
# w katalogu ./output/{filenam}.rbc zostanie zapisany skompilowany plik 
# 
# @param dir[String] - sciezka do pliku
# @param filename[String] - nazwa pliku
# @return [boolean]- true wszystko ok i kompilacja zakonczona/false wystapil blad

def check_and_compile_file(dir,fileName)
  
  puts "#{dir} - kompilacja pliku..."
  outname = fileName.split(".")[0];
  puts "#{outname}.rbc - output; ./error/#{outname}.txt - error"
  
  #polecenie do prawdzenia skladni
  checkSyntaxCommand = "ruby -c ./#{dir} > ./error/#{outname}.txt 2>&1" 
  puts checkSyntaxCommand
  
  result = system(checkSyntaxCommand)
  puts "sprawdzanie sk<ladni zakonczone #{result}"
  if(result)
    #polecenie do kompilacji
    compileCommand = "./lib/rubinius/3.79/bin/rbx compile ./#{dir} -o ./output/#{outname}.rbc > ./error/#{outname}.txt 2>&1"
    puts compileCommand
    result = system(compileCommand)
    puts "kompilacja zakonczona #{result}"
  end
     
  return result;  
end

# @author Agnieszka
#
# funkcja zwraca ostatni blad dla przeslanego pliku
# moze byc to blad kompilacji lub sprawdzania skladni
#
# @param dir[String] - sciezka do pliku
# @param filename[String] - nazwa pliku
# @return result - blad[String]


def get_compile_error(dir,fileName)
  outname = fileName.split(".")[0];
  errorFile ="./error/#{outname}.txt"
  file = File.open(errorFile, 'r')
  result = file.read();
  file.close();
  return result;  
end

