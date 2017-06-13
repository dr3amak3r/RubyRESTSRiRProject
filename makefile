./lib/rubinius/3.79/bin/rbx compile main2.rb -o main.rbc > everything.txt 2>&1
./lib/rubinius/3.79/bin/rbx -I. -e "Rubinius::CodeLoader.require_compiled 'main'" > everything2.txt 2>&1

