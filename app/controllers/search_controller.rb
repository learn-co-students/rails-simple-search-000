class SearchController < ApplicationController

  def index
    @found_set = search_for_word(search_params[:keyword])
    if @found_set.count == 1
      redirect_to "/words/#{@found_set.first.id}"
    elsif @found_set.count > 1
    else
      render :text => "No results matching that query."
    end
  end

  private
####comment this guy out and swith line 8ish to Word.search_for_word(search_params[:keyword]) for troubleshooting
    def search_for_word(keyword) 
      @match_set = Word.where('name LIKE ?', "%"+"#{keyword}"+"%").all
    end

    def search_params
      params.permit(:keyword)
    end

end
