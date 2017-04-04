class SearchController < ApplicationController
  def index
    search = params[:search]
    # @results = Fabric.search(search)
    # @results += Product.search(search)

    @results = Item.search(search)



  end
end
