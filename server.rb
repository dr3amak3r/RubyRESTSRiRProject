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
    save_to_file('p', tmpfile.read, "#{@filename}")
    folder_content("p")
    "Ściągnieto i składowana plik : #{@filename}!"
    
  end
  
  get '/' do
    %{
    <html>
      <body>
        <form action="" method="post" enctype="multipart/form-data">
          <input type="file" name="file"/>
          <input type="submit" />
        </form>
      </body>
    </html>
    }
  end
  
end
MyApp.run! :host => 'localhost', :port => 8082, :server => 'thin'
