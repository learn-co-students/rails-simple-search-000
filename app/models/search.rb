class Search

  def self.for(arguments)
    words = Word.where("name LIKE ?", "%#{arguments}%")
    words
  end

end
