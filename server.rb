#!/usr/bin/env  ruby
require 'rubygems'
require 'sinatra/base'
load 'person4.rb'

  $ip = 'localhost'
  $port = '9876'
  $servType = 'thin'
  
  # Wczytywanie opcji stałej konfiguracji
  #
  # @return [Array] zwraca tablice wczytanej konfiguracji
  def read_conf
		server = []
	  open 'config.conf' do |config_file|
		config_file.each_line do |line|
			unless line.chomp.empty? || line =~ /^#/
			  adress, port, type = line.split ','
			  server << adress << port << type
			end
		end
	  end
	  return server
  end
  # Ustawianie configuracji serwera w zmiennych globalnych
  #
  def set_conf
	data = read_conf()
	$ip = data[0]
	$port = data[1]
	$servType = data[2]		
  end
  

# @author Kamil Różański
class MyApp < Sinatra::Base

  server = Person4.new()
	
  post '/' do
    
    @filename = params[:file][:filename]
    tmpfile = params[:file][:tempfile]
    #zapis do pliku
    @result = server.save_to_file('p', tmpfile.read, "#{@filename}")
    server.folder_content("p")
    "Ściągnieto plik : #{@filename}"
    "Uruchomienie programu: #{@result}
    <br> <a href='/'>Upload next file</a> 
	<br> <a href='/uploadedfiles'>Show uploaded files</a>
	<br> <a href='/raports'> Show Raports</a>"
  end
  
  get '/' do
    %{
    <html>
      <body>
        <form action="" method="post" enctype="multipart/form-data">
          <input type="file" name="file" accept=".rb"/>
          <input type="submit" value="Upload File" />
        </form>
			<br> <a href='/uploadedfiles'>Show uploaded files</a>
			<br> <a href='/raports'> Show Raports</a>
			<br> <a href='/downloadraports'>Download Zipped Raports</a>
      </body>
    </html>
    }
  end
  
  get '/uploadedfiles' do
	get_list('p', 'rb')
  end
  
  get '/raports' do
	get_list('b', 'html')
  end
  
  get '/p/:filename' do |filename|
	get_file('p', filename)
  end
  
  get '/b/:filename' do |filename|
	get_file('b', filename)
  end
  
  get '/downloadraports' do
	file = "#{File.expand_path(__FILE__)}"
	path = file.split("server.rb")[0]
	path << 'b'
	send_file server.zip_it(path)
  end
  
  # Zwraca format html z listą plików znajdujących się w odpowiednim folderze
  #
  # @param dir [String] nazwa folderu który będzie listowany
  # @param ext [String] rozszerzenie plików bez kropki które będą listowane np. "rb, html"
  # @return [String] zwraca forme tekstową html do wyświelenia na stronie
  def get_list(dir, ext)
  
	file = "#{File.expand_path(__FILE__)}"
	file = file.split("server.rb")[0]
	file += "#{dir}/*.#{ext}"
	
	html ='<a href="/"> Powrót <a/>'
	
	for plik in Dir.glob(file).map{|f| html += "<h5><a href='#{dir}/" + f.split('/').last + "'/>" + f.split('/').last + '</a></h5>'}
		plik +'\n'
	end	
	%{ #{html}}	
  end
  # Wyzwalanie odpowiedniego pliku do ściągniecia z serwera
  #
  # @param dir [String] nazwa folderu który będzie listowany
  # @param filename [string] nazwa pliku do ściągniecia w formacie "nazwa_pliku.rozszerzenie"
  def get_file(dir, filename)
	file = "#{File.expand_path(__FILE__)}"
	file = file.split("server.rb")[0]
	file += "#{dir}/"
	send_file "#{file}#{filename}", :filename => filename, :type => 'Application/octet-stream'
  end
end
set_conf()
MyApp.run! :bind => "#{$ip}", :port => "#{$port}", :server => "#{$servType}"
