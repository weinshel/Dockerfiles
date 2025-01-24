# typeset-r

Docker container for typesetting documents and using R.
It includes a full LaTeX stack, R, and the libraries and build tools necessary to install common R packages.
The full image is very large (~3.5gb, plus more for any R packages you add).

This container is designed for interactive use.
Set it up using:

```sh
$ docker compose build
$ docker volume create renv-cache
```

And run it using:

```sh
$ docker compose run --rm
```

