class Search

  def self.for(keyword)
    @match_set = Word.where('name LIKE ?', "%"+"#{keyword}"+"%").all
  end

end
