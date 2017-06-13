
def send_file_to_server(line)
  puts line
end

loop do
   
  
  files = Dir["./client/input/*.txt"]

  files.each do |file_name| 
    if !File.directory? file_name 
      File.open(file_name) do |file|
        file.each_line do |line|
            send_file_to_server(line)
        end
      end
      File.delete(file_name)
      sleep(0.5)
    end
  end
  sleep(0.5)
end