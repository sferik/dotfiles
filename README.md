# Erik Michaels-Ober's Dotfiles
These are the files I use to configure my shell just the way I like it.

## Design Principles
With appologies to Stanley Kubrick:

> This is my prompt.
>
> ![PS1](https://github.com/sferik/dotfiles/raw/master/.ps1.png "PS1")
>
> There are many others like it, but this one is mine. My prompt is my best
> friend. It is my life. I must master it as I must master my life. Without me,
> my prompt is useless. Without my prompt, I am useless...my prompt and myself
> are defenders of my country, we are the masters of our enemy, we are the
> saviors of my life. So be it, until there is no enemy, but peace. Amen.

My prompt has two lines. The first line tells me where I am. It includes
`whoami`, my `hostname`, my `pwd`, and my `git branch`, if I am within a
repository.

My `.vimrc` is the product of 10 years of careful tuning. Using it is like
having an extra arm.

If you managed to make it this far without ever reading [In the Beginning was
the Command Line](http://www.cryptonomicon.com/beginning.html), stop whatever
you're doing and read that instead.

## Installation
    gem install thor
    git clone git://github.com/sferik/dotfiles
    cd dotfiles
    thor dotfiles:install

## Inspiration
These files are an amalgamation of wisdom collected over the years, the sources
of which are too numerous to list. The idea to put them in a repository with an
install script was taken from [Ryan Bates](https://github.com/ryanb/dotfiles).
