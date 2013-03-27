# vim-hub

A relocatable vim environment, just clone, install and go!

## Installing

After you've cloned the repo, just run 'install'.  The installer
will integrate the repo with an existing vim installation.

## Adding/Removing plugins

vim-hub relies on pathogen for plugin management but supplies a 
lightweight frontend via 'plugin-add' and 'plugin-remove'.

./plugin-add <git-repo-url>
./plugin-remove <plugin-name>

Where 'plugin-name' matches its git repo name.

## Updating
Running 'update' will update pathogen and all your installed plugins.

Enjoy!
