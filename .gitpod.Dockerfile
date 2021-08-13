FROM gitpod/workspace-full

RUN sudo sudo apt update -y && sudo apt install -y bubblewrap rsync darcs aspcud
RUN sudo bash -c "sh <(curl -fsSL https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh) /usr/local/bin"

RUN echo '. /home/gitpod/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true' >> /home/gitpod/.bashrc
RUN opam init --comp 4.05.0
RUN opam switch 4.05.0
RUN opam update


