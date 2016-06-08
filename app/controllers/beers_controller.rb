class BeersController < ApplicationController
  def index
    @beers = Beer.all
    @brewery = Brewery.new
    @beer = Beer.all
     @beer = Beer.find_by(params[:style])
#         <td><%= Brewery.find_by(:id => @beer.brewery_id).brewery_name %></td>
  end

  def show
    @beer = Beer.find(params[:id])
    @brewery = Brewery.new
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new
    @beer.users_id = params[:users_id]
    @beer.brewery_id = params[:brewery_id]
    @beer.tasting_notes = params[:tasting_notes]
    @beer.rating_1_10 = params[:rating_1_10]
    @beer.abv = params[:abv]
    @beer.location_consumed = params[:location_consumed]
    @beer.style = params[:style]
    @beer.brewery_name = params[:brewery_name]
    @beer.beer_name = params[:beer_name]

    if @beer.save
      redirect_to "/beers", :notice => "Beer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @beer = Beer.find(params[:id])
    @brewery = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])

    @beer.users_id = params[:users_id]
    @beer.brewery_id = params[:brewery_id]
    @beer.tasting_notes = params[:tasting_notes]
    @beer.rating_1_10 = params[:rating_1_10]
    @beer.abv = params[:abv]
    @beer.location_consumed = params[:location_consumed]
    @beer.style = params[:style]
    @beer.brewery_name = params[:brewery_name]
    @beer.beer_name = params[:beer_name]

    if @beer.save
      redirect_to "/beers", :notice => "Beer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @beer = Beer.find(params[:id])

    @beer.destroy

    redirect_to "/beers", :notice => "Beer deleted."
  end
end
