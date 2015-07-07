# Cucumber Hands-on

## Make sure you have these dependencies setup:

### Xcode Command Line Tools
`xcode-select --install`

### Homebrew
`ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

### RubyMine
Download and install [RubyMine]
[RubyMine]: https://www.jetbrains.com/ruby/download/

### rbenv
`brew update`

`brew install rbenv ruby-build`

`echo 'export RBENV_ROOT=/usr/local/var/rbenv' >> ~/.bashrc`

`echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bashrc`

`source ~/.bashrc`

## Setting up the Project
`git clone https://github.com/luhhsnunes/cucumber-workshop.git`

`cd cucumber-workshop`

`rbenv install`

`rbenv rehash`

`gem install bundler`

`bundle install`

## Testing if Cucumber has been successfully setup:
`cucumber`

If everything is fine, you should see the following message on your terminal:

> No such file or directory - features. You can use `cucumber --init` to get started
