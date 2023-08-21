FROM gitpod/workspace-full

USER gitpod

ENV HOMEBREW_NO_INSTALL_CLEANUP=true
ENV OPAMROOT=/workspace/.opam


####
# update: get the latest version

# install: installs the following
## opam — opam package manager
## libev — event loop library used by Lwt
## bubblewrap — required for opam
## aspcud — used by opam
## curl — used by opam
## bzip2 and unzip — used by opam
## rsync and darcs — for enabling versioning options within dune

# completions link: Opt in to using shell completions
# cleanup: clean up downloads and temp files
# rm brew cache: get rid of the homebrew cache, which just takes up space after this. 

####

RUN brew update ; \
    brew install \
    opam \
    libev \
    bubblewrap \
    aspcud \
    bzip2 \
    unzip \
    curl \
    rsync \
    darcs ; \
  brew completions link ; \
  brew cleanup --prune=all ; \
  rm -rf "$(brew --cache)"

# Enables keeping the dependencies cached between startups
RUN echo 'export OPAMROOT=/workspace/.opam' >> /home/gitpod/.bashrc

# Makes sure that this line—which is normally inserted as part of the opam init—
# is always in the bashrc file.
RUN echo '. /workspace/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true' >> /home/gitpod/.bashrc
