class Protection

def safetyCheck(dir)


  temp_file = File.new("temporary.rb", "w")
  to_check = IO.read(file_to_check)

  open('temporary.rb', 'w') {
      |f| f << '$SAFE = 3; '<< to_check
  }


  begin
    eval(IO.read(temp_file))

  rescue Exception => e
    return false
  ensure
    temp_file.close
  end

  return true
end


end