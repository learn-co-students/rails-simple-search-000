class WordsController < ApplicationController

  def index
  end

  def show
    #### WHY DO I NEEED TO REDIFINE THIS VARIABLE WHEREAS IN OTHER LABS IT WAS NOT NECCESSARY
    @word = Word.find_by(id: params[:id])
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params[:word])
    @word.save
    redirect_to @word
  end

  private

    def word_params
      params.permit({:word => [:name]})
    end

end
