PROG = main.exe
SRC  = main.ml

launch: $(PROG)
	./$(PROG) 3 5

run: $(SRC)
	ocaml $(SRC) 3 5

$(PROG): $(SRC)
	ocamlopt -o $(PROG) $(SRC)

clean:
	rm -f $(PROG) *.cmx *.cmi *.o