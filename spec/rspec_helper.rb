require 'mongoid'
require 'mongoid_monkeypatching'

Mongoid.load!(File.expand_path('../mongoid.yml',__FILE__), 'test')

class Foo
  include Mongoid::Document
  include Mongoid::Timestamps

  field :bar
  field :baz
end
