class DrinklistController < ApplicationController
  def index
    beer = Bottle.where(category: 'Öl')
    cider = Bottle.where(category: 'Cider')
    soda = Bottle.where(category: 'Alkoholfritt')
    wine = Bottle.where(category: 'Vin')

    @drinks = {beer: beer, cider: cider, soda: soda, wine: wine}
    @order = ["Lager", "IPA", "Ale", "Pale Ale", "American Pale Ale", "Brown Ale", "Wit", "Porter", "Stout", "Övrigt"]
  end
end
