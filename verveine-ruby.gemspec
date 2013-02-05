# encoding: utf-8

Gem::Specification.new do |s|
  s.name = "verveine-ruby"
  s.version = "0.0.1"
  s.date = "2013-02-05"
  s.homepage = "https://github.com/cdlm/verveine-ruby"
  s.summary = "FAMIX export of method visibility statistics in Ruby code"

  s.authors = [ "Damien Pollet", "Damien Cassou" ]
  s.email = "damien.pollet@inria.fr"

  s.files = Dir['bin/**/*'] + [
    'verveine-ruby.gemspec',
    'README.markdown'
  ]
  s.executables = [ 'verveine-ruby' ]

  s.add_runtime_dependency('yard')
end
