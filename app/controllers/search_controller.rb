class SearchController < ApplicationController

  def index
    query = params[:keyword]
    @words = Search.for(query)
    if @words.length == 1
      @word = @words.first
      redirect_to "/words/#{@word.id}"
    end
  end

  def for
  end

end
