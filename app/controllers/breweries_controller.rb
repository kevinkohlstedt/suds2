class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.all
  end

  def show
    @brewery = Brewery.find(params[:id])
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new
    @brewery.brewery_location = params[:brewery_location]
    @brewery.brewery_name = params[:brewery_name]
    @brewery.image_url = params[:image_url]

    if @brewery.save
      redirect_to "/breweries", :notice => "Brewery created successfully."
    else
      render 'new'
    end
  end

  def edit
    @brewery = Brewery.find(params[:id])
  end

  def update
    @brewery = Brewery.find(params[:id])

    @brewery.brewery_location = params[:brewery_location]
    @brewery.brewery_name = params[:brewery_name]
    @brewery.image_url = params[:image_url]

    if @brewery.save
      redirect_to "/breweries", :notice => "Brewery updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @brewery = Brewery.find(params[:id])

    @brewery.destroy

    redirect_to "/breweries", :notice => "Brewery deleted."
  end
end
