# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

YAML.load_file('db/seeds/bottles.yaml').each { |x| Bottle.create(name: x["name"], category: x["category"], category_type: x["type"], subtype: x["subtitle"], price: x["price"], active: true) }
