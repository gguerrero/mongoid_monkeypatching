## Monkey Patch for 'some_document.last === some_document.first'
## More info here http://stackoverflow.com/questions/35039847/the-bug-of-mongoid-returning-first-document-when-invoking-last
##
## After doing 'default_scope' patch, if you combined with another sort in any other criteria,
## default scope still as first order priority, so you 'order' command is not executed and
## you're not allowed to order has you want.
## Trying to hack 'first' and 'last' methods instead...
##

require 'mongoid_monkeypatching/version'
require 'mongoid_monkeypatching/document'
require 'mongoid_monkeypatching/criteria'

if defined?(Mongoid)

  module Mongoid::Findable
    alias_method :original_first, :first
    alias_method :original_last,  :last
  end
  
  module Mongoid::Document::ClassMethods
    include MongoidMonkeypatching::Document::ClassMethods
  end

  class Mongoid::Criteria
    include MongoidMonkeypatching::Criteria
  end

end
