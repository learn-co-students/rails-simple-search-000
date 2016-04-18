class SearchController < ApplicationController

	def index
		@results = Search.for(params[:keyword])
		if @results.length == 1 && @results[0].name == params[:keyword]
			redirect_to "/words/#{@results[0].id}"
		end
		if @results.length == 0
			redirect_to "/search/nope"
		end
	end

end
