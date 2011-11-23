# Erik Michaels-Ober's Dotfiles
These are files to configure a shell just the way I like it.

## <a name="design"></a>Design Principles
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

Incidentally, my computer is named
[leon](http://www.imdb.com/title/tt0110413/), because it is a MacBook Pro. If
convention holds, my next computer will be named
[upin](http://www.imdb.com/title/tt1193138/).

My `.vimrc` is the product of 10 years of tweaking and tuning. Using it is like
having an extra arm. I like `vim` because it makes switching between my editor
and the command line seamless. If you prefer MacVim, I'd recommend
**[@carlhuda](https://github.com/carlhuda/)**'s
[janus](https://github.com/carlhuda/janus) distribution.

If you managed to make it this far without ever reading [In the Beginning was
the Command Line](http://www.cryptonomicon.com/beginning.html), stop whatever
you're doing and read that instead.

## <a name="installation"></a>Installation
    gem install bundler thor
    git clone git://github.com/sferik/dotfiles
    cd dotfiles
    bundle install
    bundle exec thor dotfiles:install

## <a name="inspiration"></a>Inspiration
These files are an amalgamation of wisdom collected over the years, the sources
of which are too numerous to list. The idea to put them in a repository with an
install script was taken from [Ryan Bates](https://github.com/ryanb/dotfiles).
