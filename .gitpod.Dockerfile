FROM gitpod/workspace-full

RUN sudo add-apt-repository -y ppa:avsm/ppa && sudo apt-get update -y && sudo apt-get install -y opam rsync darcs aspcud

USER gitpod

RUN echo '. /home/gitpod/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true' >> /home/gitpod/.bashrc
RUN opam init --disable-sandboxing
RUN eval $(opam env) && opam switch create 4.12.0
RUN eval $(opam env) && opam update
RUN eval $(opam env) && ocaml -version
