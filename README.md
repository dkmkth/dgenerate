# README

To seed database, run
```YAML.load_file('beer_cider.yaml').each { |x| Bottle.create(name: x["name"], category: x["category"], category_type: x["type"], subtype: x["subtitle"], price: x["price"]) }```
