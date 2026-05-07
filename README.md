# 1. Mettre à jour les paquets
sudo apt update && sudo apt upgrade -y

# 2. Installer OCaml via apt (ocaml + ocamlopt inclus)
sudo apt install -y ocaml

# 3. Vérifier les installations
ocaml --version
ocamlopt --version

# Si vous avez besoin d'installer des bibliothèques OCaml supplémentaires, vous pouvez utiliser OPAM, le gestionnaire de paquets OCaml...
Plutôt utiliser OPAM (OCaml Package Manager) : [https://opam.ocaml.org/](https://opam.ocaml.org/)

> En théorie il n'y a pas besoin d'installer de nouvelles bibliothèques pour ce projet, mais si vous en avez besoin, OPAM est la solution recommandée.