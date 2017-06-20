#!/usr/bin/env  ruby

# @author Michał
#
#Funkcja sprawdza poziom bezpieczeństwa kodu
#Ustawiając poziom bezpieczeństwa $SAFE=3,modyfikując kopię otrzymanego kodu
#który uniemożliwia dostęp i modyfikację do zasobów zewnętrzych hosta
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

#Wywołanie zmodyfikowanego pliku z kodem
  begin
    isSecure = system("ruby temporary.rb")
  rescue Exception => e
    return false
  ensure
    temp_file.close
    File.delete("temporary.rb")
  end

 if isSecure == true
    return true
  else
    return false
  end
  end
