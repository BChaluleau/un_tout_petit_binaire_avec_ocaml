# Passer de learn OCaml à un programme qui s'exécute sur votre machine

## installer OCaml sur un Linux

On écrit du code OCaml dans un fichier par exemple `main.ml`. Ensuite, on a deux solutions pour exécuter le programme : le compiler (avec ocamlopt) ou l'interpréter (avec ocaml). Compiler ressemble vraiment beaucoup à ce que vous faites en C avec `gcc`.

### 1. Mettre à jour les paquets
sudo apt update && sudo apt upgrade -y

### 2. Installer OCaml via apt (ocaml + ocamlopt inclus)
sudo apt install -y ocaml

### 3. Vérifier les installations
ocaml --version
ocamlopt --version

### Si vous avez besoin d'installer des bibliothèques OCaml supplémentaires, vous pouvez utiliser OPAM, le gestionnaire de paquets OCaml...
Plutôt utiliser OPAM (OCaml Package Manager) : [https://opam.ocaml.org/](https://opam.ocaml.org/)

> En théorie il n'y a pas besoin d'installer de nouvelles bibliothèques pour ce projet, mais si vous en avez besoin, OPAM est la solution recommandée.


## Exécuter le projet

On peut tout à fait mettre en place un Makefile pour automatiser la compilation et éventuellement le lancement. 
Dans l'exemple donné, on a deux cibles : 
- "launch" pour compiler et exécuter le projet (on obtient un exécutable nommé "main.exe") qui prend deux arguments (des entiers) pour les additionner.
- "run" pour exécuter directement le projet sans le compiler (en utilisant l'interpréteur OCaml).
- "clean" pour supprimer les fichiers générés lors de la compilation.

Exemple minimaliste de Makefile :

```Makefile
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
``