#!/usr/bin/env  ruby
require 'rubygems'
require 'sinatra/base'

class MyApp < Sinatra::Base

	get '/' do
		'myapp2 Hello world!'
	end
	
	get '/hello' do
    
		html = "<pre>"
    env.each do |k,v|
      html += k + " = " + v.to_s + "<br/>"
    end
    html + "</pre>"
	end  
  
  post '/form' do
    
    @filename = params[:file][:filename]
    tmpfile = params[:file][:tempfile]
    
    File.open("#{@filename}", 'wb') do |f|
    f.write(tmpfile.read)
	end
  end
  
  get '/form' do
    %{
    <html>
      <body>
        <form action="form" method="post" enctype="multipart/form-data">
          <input type="file" name="file"/>
          <input type="submit" />
        </form>
      </body>
    </html>
    }
  end
  
end
MyApp.run! :host => 'localhost', :port => 8082, :server => 'thin'
