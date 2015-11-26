class DrinklistsController < ApplicationController
  def index
    beer = Bottle.where(category: 'Öl', active: true)
    cider = Bottle.where(category: 'Cider', active: true)
    soda = Bottle.where(category: 'Alkoholfritt', active: true)
    wine = Bottle.where(category: 'Vin', active: true)

    @drinks = {beer: beer, cider: cider, soda: soda, wine: wine}
    @order = ["Lager", "IPA", "Ale", "Pale Ale", "American Pale Ale", "Brown Ale", "Wit", "Porter", "Stout", "Övrigt"]
  end

  def new
    @bottle = Bottle.new
  end

  def create
    @bottle = Bottle.new(bottle_params)

    if @bottle.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @bottle = Bottle.find(params[:id])
  end

  def update
    @bottle = Bottle.find(params[:id])

    if @bottle.update(bottle_params)
      redirect_to edit_list_url
    else
      render :edit
    end
  end

  def destroy
    @bottle = Bottle.find(params[:id])

    @bottle.destroy
    redirect_to edit_list_url
  end

  def edit_list
    @bottles = Bottle.all
  end

  def save_list
    Bottle.where.not(id: params[:drinklist_ids]).update_all(active: false)
    Bottle.find(params[:drinklist_ids]).each do |bottle|
      p bottle
      bottle.update(active: true)
    end
    redirect_to edit_list_url
  end

  private
  def bottle_params
    params.require(:bottle).permit(:name, :brand, :category, :category_type, :subtype, :purchase_price, :price)
  end

end
