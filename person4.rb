#!/usr/bin/env  ruby
#encoding: utf-8'
require 'diffy'
require 'zip'

# @author Kamil Różański
class Person4
# Zapisanie w postaci paczki .zip wszystkich wygenerowanych raportów porównawczych 
#
# @param path [String] bezwzględna ścieżka do pliku
# @return [String] bezwzgledna ścieżka do zapisanego pliku .zip 
def zip_it(path)
	zipfile_name = path  # full path-to-zip-file
	zipfile_name << '/raport.zip'
	directory = zipfile_name.split('raport.zip')[0]
	if(File.file?(zipfile_name))
		File.delete(zipfile_name)
	end
		Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
		Dir[File.join(directory, '*.html')].each do |file|
		zipfile.add(file.sub(directory, ''), file)
		end
	end
	return zipfile_name
end 
   
# Sprawdzanie czy isnieje odpowiedni folder, jeżli nie zostanie od utworzony
#
# @param dir [String] nazwa folderu do sprawdzenia
# @return [Boolen] true - istnieje folder, false - nie istnieje folder i go tworzy
def directory_exists(dir)
	Dir.mkdir(dir) unless ret = File.exists?(dir)
	return ret
end

# Zapisanie raportu prównanych plików z rozszerzeniem .rb do formatu html
#
# @param dir [String] nazwa folderu w którym zapisywane będą raporty
# @param fileName [String] nazwa pliku pod jaką zostanie zapisany raport .html
# @param html_string_left [String] treesc pierwszego pliku do porównania 
# @param html_string_right [String] tresc drugiego pliku do porównania
# @param fileOne [String] nazwa wraz z rozszerzeniem pierwszego pliku
# @param fileTwo [String] nazwa wraz z rozszerzeniem drugiego pliku
# @return [String] zwraca tekst raportu porównawczego w formacie html
def save_to_html(dir, fileName, html_string_left, html_string_right, fileOne, fileTwo)
	dir = "#{dir}/#{fileName}"
	file = File.open(dir, 'w')
	splitFileOne = fileOne.split(".")
	splitFileTwo = fileTwo.split(".")
	file.write('<link rel="stylesheet" href="style.css">')
	file.write("<h1> Raport #{splitFileOne[0]}#{splitFileTwo[0]}.html  </h1>")
	file.write('<div class="diff"><ul>')
	file.write('<li class="unchanged"><span>Nie zmieniona linia</span></li>')
    file.write('<li class="del"><del><strong>Usinieta linia</strong></del></li>')
    file.write('<li class="ins"><ins><strong>Dodana Linia</strong></ins></li>')
	file.write('</ul></div><br>')
	file.write('<table style="width:100%"> <tr>')
	file.write("<th>#{fileOne}</th><th>#{fileTwo}</th>")
	file.write('</tr>')
	if (html_string_left == html_string_right)
		file.write("<tr><td colspan = '2'><center> Pliki identyczne brak zmian </center></td><tr>")
	end
	file.write("<tr><td>#{html_string_left}</td>")
	file.write("<td>#{html_string_right}</td>")
	file.write('</tr></table>')
	file.close
end

# Dodawanie losowego numeru do konca nazwy pliku
#
# @param fileName [String] nazwa pliku w formacie "nazwa_pliku.rb"
# @return [String] zwraca nową nazwę dla pliku
def rename_random(fileName)
	split_file = fileName.split(".")
	newFileName = "#{split_file[0]}#{rand(0..9)}.rb"
	return newFileName
end

# Sprawdzanie czy w podanym folderze istnieje dany plik
#
# @param dir [String] folder który będzie sprawdzany
# @param fileName [String] nazwa pliku który będzie poszukiwany
# @return [Integer] zwraca 0 gdy plik nie istnieje, gdy plik istnieje zwraca 1
def if_file_exists(dir, fileName)
	file_array = Dir.entries(dir)
	for element in file_array do
		if(element == fileName)
			return 1
		end
	end
	return 0
end

# Zapisanie do pliku formatu .rb
#
# @param dir [String] nazwa folderu do zapisu
# @param string [String] tekst zapisywany do pliku
# @param fileName [String] nazwa pliku pod jaką zapisywany jest plik z rozszerzeniem .rb
def save_to_file(dir, string, fileName)
	#sprawdzanie czy istnieje folder do skladowania danych i tworzenie w przypadku gdy nie istnieje
	directory_exists("#{dir}")
	#sprawdzanie czy dana nazwa nie istnieje
	while 1 == if_file_exists(dir, fileName)
		puts "#{fileName} - ten plik istnieje"
		fileName = rename_random(fileName)
		puts "#{fileName} - wygenerowano nową nazwę pliku"
	end
		dir = "#{dir}/#{fileName}"
		file = File.open(dir, 'w')
		file.write(string)
		file.close
end

# Przegladanie i porównywanie plików z rozszerzeniem .rb oraz generowanie raportów
# @param dir [String] nazwa folderu który będzie przeglądany
# @return [Array] zwraca tablice pliów itniejących w folderze zapisu
def folder_content(dir)
	#zapisaie wszystkich plikow z folderu p do 
	file_array = Dir.entries(dir)
	puts "#{file_array.size} plików w folderze /#{dir}."
	rb_file_array = []
	#przepisanie tablicy plików z rozszerzeniem .rb
	for element in file_array do
		if element.include? ".rb"
			rb_file_array << element
		end
	end
	#tablica 2d do przechowywania sprawdzonych nazw plikow
	values = []
	firstFile = []
	secondFile = []
	values.push(firstFile)
	values.push(secondFile)
	saveFile = 1
	#wyświetlanie ilosci plików z rozszerzeniem .rb
	puts "#{rb_file_array.size} plików w folderze /#{dir}, z rozszerzeniem \".rb\"."
	#sprawdzanie czy istnieje folder do skladowania danych i tworzenie w przypadku gdy nie istnieje
	directory_exists("b")
	#porownanie elementow plików
	for ext_element in rb_file_array do
		for inner_element in rb_file_array do
			saveFile = 1
			if ext_element != inner_element			
	#sprawdzanie tablicy czy istnieje juz porownanie - w oparciu o kombinacje bez powtorzeń
				for i in 0..values[0].size
					if(values[0][i] == inner_element && values[1][i] == ext_element)
						saveFile = 0
						break
					end
				end
				#zapisanie do tablicy gdy plik nie istnieje
				if(saveFile != 0)
				#zapisanie sprawdzanych plików
					firstFile.push(ext_element)
					secondFile.push(inner_element)
				
					puts "======Porownanie plików #{ext_element} ?= #{inner_element}.======" 
					html_output_left = Diffy::Diff.new("#{dir}/#{ext_element}", "#{dir}/#{inner_element}", :source => 'files').to_s(:html_simple)
					html_output_right = Diffy::Diff.new("#{dir}/#{inner_element}", "#{dir}/#{ext_element}", :source => 'files').to_s(:html_simple)
					split_inner = inner_element.split(".")
					split_ext = ext_element.split(".")
					html_fileName = "#{split_inner[0]}#{split_ext[0]}.html"
					save_to_html('b', html_fileName, html_output_left, html_output_right, inner_element, ext_element)
				end
			end
		end
	end
end
print "Osoba 4 - Skladowanie i porownywanie kolejnych przeslanych programow na komputer K2 pod wzgledem podobienstwa budowy programu oraz przeslanie zwrotnego raportu\n"
end
