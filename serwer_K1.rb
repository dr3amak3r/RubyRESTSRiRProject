
require 'sinatra' 
require 'json' 

# ###### Sinatra Part ###### 

 set :port, 8080 
 set :environment, :production 


get '/download/:filename' do |filename|
  send_file "C:/Users/achuc/Documents/SRiR/#{filename}", :filename => filename, :type => 'Application/octet-stream'
  #send_file "C:/Users/achuc/Documents/hello-world.rb"
  
end

get '/' do
  
  #list = Dir.glob("C:/Users/achuc/Documents/*.*").map{|f| f.split('/').last}.
  for plik in Dir.glob("C:/Users/achuc/Documents/SRiR/*.*").map{|f| '<h4><a href="download/' + f.split('/').last + '"/>' + f.split('/').last + '</a></h4>'}
    plik +'\n'
  end
  
end