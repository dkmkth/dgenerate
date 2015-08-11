require 'rubygems'
require 'haml'
require 'json'

json_file = ARGV[0] || 'beer_cider.json'
template_file = ARGV[1] || 'bar_template.html.haml'

drinks = JSON.parse(File.read(json_file))
engine = Haml::Engine.new(File.read(template_file))
puts engine.render(Object.new, {drinks: drinks})
