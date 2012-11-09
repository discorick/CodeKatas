require 'fakes-rspec'
require 'fakes'

Dir.glob('../lib/*.rb').each do |item|
  full_path = File.expand_path(item)
  require full_path
end
