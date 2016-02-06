class Word < ActiveRecord::Base

  def search_for_word(keyword) 
    @match_set = Word.where('name LIKE ?', "%"+"#{keyword}"+"%").all
  end

end
