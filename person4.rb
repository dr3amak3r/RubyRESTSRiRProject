#!/usr/bin/env  ruby
#encoding: utf-8
require 'diffy'
require 'zip'

#funkcja pakujaca raporty do paczki
def zip_it(path)

path.sub!(%r[/$],'')
archive = File.join(path,File.basename(path))+’.zip’
FileUtils.rm archive, :force=>true

	Zip::ZipFile.open(archive, ‘w’) do |zipfile|
		Dir['#{path}/**/**'].reject{|f|f==archive}.each do |file|
		zipfile.add(file.sub(path+’/’,”),file)
		end
	end
end    

#funkcja sprawdzajaca czy scierzka istnieje
def directory_exists(directory)
	Dir.mkdir(directory) unless File.exists?(directory)
end
#zapis do pliku html
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
	file.write('</tr><tr>')
	file.write("<td>#{html_string_left}</td>")
	file.write("<td>#{html_string_right}</td>")
	file.write('</tr></table>')
	file.close
end

#funkcja generujaca dodatkowe elementy w nazwie pliku
def rename_random(fileName)
	split_file = fileName.split(".")
	newFileName = "#{split_file[0]}#{rand(0..9)}.rb"
	return newFileName
end

#funkcja zwracajaca 0 gdy plik nie istnije w przeciwnym wypadku 1
def if_file_exists(dir, fileName)
	file_array = Dir.entries(dir)
	for element in file_array do
		if(element == fileName)
			return 1
		end
	end
	return 0
end

#funkcja zapisujaca do pliku
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

#funkcja przegladajaca folder z plikami
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


