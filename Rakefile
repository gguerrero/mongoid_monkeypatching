begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end


begin
  require 'rake'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = "--color --format documentation"
  end

  task :default => :spec
rescue LoadError => e
  puts 'To run tests please `gem install rspec` and try again' 
  puts e.message
  e.backtrace.each { |message| puts message }
end
