class BreweryToBeersController < ApplicationController
  def index
    @brewery_to_beers = BreweryToBeer.all
  end

  def show
    @brewery_to_beer = BreweryToBeer.find(params[:id])
  end

  def new
    @brewery_to_beer = BreweryToBeer.new
  end

  def create
    @brewery_to_beer = BreweryToBeer.new
    @brewery_to_beer.beer_id = params[:beer_id]
    @brewery_to_beer.brewery_id = params[:brewery_id]

    if @brewery_to_beer.save
      redirect_to "/brewery_to_beers", :notice => "Brewery to beer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @brewery_to_beer = BreweryToBeer.find(params[:id])
  end

  def update
    @brewery_to_beer = BreweryToBeer.find(params[:id])

    @brewery_to_beer.beer_id = params[:beer_id]
    @brewery_to_beer.brewery_id = params[:brewery_id]

    if @brewery_to_beer.save
      redirect_to "/brewery_to_beers", :notice => "Brewery to beer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @brewery_to_beer = BreweryToBeer.find(params[:id])

    @brewery_to_beer.destroy

    redirect_to "/brewery_to_beers", :notice => "Brewery to beer deleted."
  end
end
