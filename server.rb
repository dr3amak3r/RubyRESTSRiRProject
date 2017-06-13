#!/usr/bin/env  ruby
require 'rubygems'
require 'sinatra/base'
#wlasny plik
load 'person4.rb'

class MyApp < Sinatra::Base

  post '/' do
    
    @filename = params[:file][:filename]
    tmpfile = params[:file][:tempfile]
    #zapis do pliku
    @result = save_to_file('p', tmpfile.read, "#{@filename}")
    folder_content("p")
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
  
  files = Dir['p/*.rb']
	%{  <a href='/'> Powrót <a/> 
		#{files.map{ |f| "<br>#{f.split('/')[1]}"}}
	}
  end
  
  get '/raports' do
  files = Dir['b/*.html']
	%{  <a href='/'> Powrót <a/> 
		#{files.map{ |f| "<br>#{f.split('/')[1]}"}}
	}
	#{Dir.entries('./b').map { |e| "<br>#{e.split("\"")[0]}" }}
  end
  
  get '/downloadraports' do
	file = "#{File.expand_path(__FILE__)}"
	path = file.split("server.rb")[0]
	path << 'b'
	send_file zip_it(path)
  end
  
end
MyApp.run! :bind => 'localhost', :port => 8080, :server => 'thin'
