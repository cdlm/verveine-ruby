#!env ruby

require 'yard'

root = ARGV.first || '.'
exit 1 unless File.directory? root

logger = YARD::Logger.instance STDERR

famix_id = 0
files = 0
puts '('
Dir.glob "#{root}/**/*.rb" do |f|
  files = files + 1
  logger.puts "parsing #{f}..."
  YARD.parse f

  YARD::Registry.all(:method).each do |m|
    famix_id = famix_id+1
    puts "(FAMIX.Method (id: #{famix_id}) (name '#{m.name}') (modifiers '#{m.visibility}'))"
  end
  YARD::Registry.clear
end
puts ')'

logger.puts "Phew, done! #{famix_id} methods in #{files} files"

