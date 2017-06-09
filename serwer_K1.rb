
require 'sinatra' 
require 'json' 

# ###### Sinatra Part ###### 

 set :port, 8080 
 set :environment, :production 


get '/download/:filename' do |filename|
  send_file "./SRiR/#{filename}", :filename => filename, :type => 'Application/octet-stream'
  
end

get '/' do

  for plik in Dir.glob("./SRiR/*.*").map{|f| '<h4><a href="download/' + f.split('/').last + '"/>' + f.split('/').last + '</a></h4>'}
    plik +'\n'
  end
  
end