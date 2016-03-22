class ETL
  def self.transform old_scores
  	new_scores = {}
  	old_scores.each do |old_score_key,old_score_value|
  	  old_score_value.each do |old_score|
  	    new_scores[old_score.downcase] = old_score_key
  	  end 	
  	end
  	return new_scores	
  end	
end	