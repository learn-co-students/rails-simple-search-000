class SearchController < ApplicationController

  def index
    @found_set = Search.for(search_params[:keyword])
    if @found_set.count == 1
      redirect_to "/words/#{@found_set.first.id}"
    elsif @found_set.count > 1
    else
      render :text => "No results matching that query."
    end
  end

  private

    def search_params
      params.permit(:keyword)
    end

end
