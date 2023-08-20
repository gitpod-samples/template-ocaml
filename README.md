# A OCaml template on Gitpod

This is a [OCaml](https://en.wikipedia.org/wiki/OCaml) template configured for ephemeral development environments on [Gitpod](https://www.gitpod.io/). It provides the development tools recommneded in the offical OCaml documentation: [Up and Running with OCaml](https://ocaml.org/learn/tutorials/up_and_running.html): It uses [Dune](https://dune.readthedocs.io/en/stable/) as the build system, [ocaml-lsp](https://github.com/ocaml/ocaml-lsp) to provide code-completion etc, and [ocamlformat](https://github.com/ocaml-ppx/ocamlformat) to automatically format your code whenever you save files.

Before you can build and run the `helloworld` program you need to be in the right directory and have the opam environment configured; in Gitpod this is already done for you.

```sh
eval $(opam env)
```

To build and run the `helloworld` program, run the following:

```sh
dune build
dune exec helloworld
```

## Next Steps

Click the button below to start a new development environment:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/gitpod-io/template-ocaml)

## Get Started With Your Own Project

### A new project

Click the above "Open in Gitpod" button to start a new workspace. Once you're ready to push your first code changes, Gitpod will guide you to fork this project so you own it.

### An existing project

To get started with OCaml on Gitpod, copy the contents of this foler to your own project. To learn more, please see the [Getting Started](https://www.gitpod.io/docs/getting-started) documentation.
