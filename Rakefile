require_relative './config/environment.rb'

puts "I just created a Rakefile! Welcome to this interactive environment"

def reload!
  Dir.glob("./*lib*/*.rb").each {|file| load file}
end

desc "Starting the playground sesh:"
task :console do
  Pry.start
end