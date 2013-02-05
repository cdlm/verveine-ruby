This is a quick hack to get statistics on method visibility in Ruby code, using [Yard][].
It generates a very minimal [FAMIX][] file for loading into [Moose][].

## Installation and usage

Get the code, then

    gem install yard
    ./verveine-ruby $RUBY_CODE_DIRECTORY > file.famix

It was hastily hacked with Yard 0.8.4 on Ruby 1.9.3.

[yard]: http://yardoc.org/
[famix]: http://www.moosetechnology.org/docs/famix
[moose]: http://www.moosetechnology.org

