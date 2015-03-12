goosebump
=========

this is just a tiny main function that fires off [mongoose http server](https://code.google.com/p/mongoose/). i use it tou make deploying static content to heroku/dokku/deis simple

uses
----

* very tiny
* check it into your git repo, why not
* make a buildpack to serv static content

build
-----

###make

if you want to use make, you must coppy mongoose.c and mongoose.h into the repo
directory (.gitignore is already aware of them)

###nix

if you are using [nix](https://nixos.org/nix/), simply `nix-build` as usual
