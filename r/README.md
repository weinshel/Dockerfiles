# r

Docker container for using R.
It includes R and the libraries and build tools necessary to install common R packages.

This container is designed for interactive use.
Set it up using:

```sh
$ docker compose build
$ docker volume create renv-cache
```

And run it using:

```sh
$ docker compose run --rm r
```

