(lang dune 3.10)

(name helloworld)

(generate_opam_files true)

(source
 (github gitpod-samples/template-ocaml))

(license LICENSE)

(package
 (name helloworld)
 (depends ocaml dune))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
