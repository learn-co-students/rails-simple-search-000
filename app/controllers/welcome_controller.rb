class WelcomeController < ApplicationController
    def show
      @word = Word.new
    end

    def index
    end
end
