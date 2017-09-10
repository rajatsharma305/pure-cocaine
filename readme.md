# pure-cocaine

_Life and Times of a Functional Programmer_

functionalreactive.ninja generator made with Hakyll, a Haskell based Static Site generator

### Install Haskell

- `brew cask install haskell-platform`
- `stack setup --install-ghc`

_If you want to install Hakyll_

- `stack install hakyll`
- `hakyll-init pure-heroine`

### Install Ruby(For Sass)

_Don't use existing ruby of Mac, install local ruby with rbenv_

- `brew install rbenv`
- `rbenv install 2.4.1`
- `rbenv global 2.4.1`

_And now Sass_

- `gem install sass`


### Installation and Development

_Initialise stack_
- `stack init`

_Build Haskell Binary_
- `stack build`

_Build Website_
- `stack exec site build`

_Watch Website on port:8000_
- `stack exec site watch`

_Clean Older Website Builds_

- `stack exec site clean`

#### Web Generated With <img src='inspirations/haskell.svg' height='20px'>
