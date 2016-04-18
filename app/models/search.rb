class Search

	def self.for(string)
		answer_array = []
		Word.all.each do |word|
			if word.name.match(string).nil? == false
				answer_array<<word
			end	
		end
		answer_array
	end

end
