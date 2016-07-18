class Candidate < ActiveRecord::Base
	        belongs_to :position
	        has_many :votes
	        
	    def full_name
	    	"#{ self.first_name }-#{ self.last_name }"
	    end
end
