#!/usr/bin/env  ruby

# @author Michał
#
#Funkcja sprawdza poziom bezpieczeństwa kodu
#Ustawiając poziom bezpieczeństwa $SAFE=3, modyfikując kopię otrzymanego kodu
#Jeżeli w kodzie występują potencjalnie niebezpieczne metody zwróci 'false'
#
# @param dir[String] - sciezka do pliku
#
def safetyCheck(dir)


  #stworzenie tymczasowego pliku
  temp_file = File.new("temporary.rb", "w")
  to_check = IO.read(dir)

  #modifikacja kodu poprzez ustawienie 3 poziomu bezpieczeństwa
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


