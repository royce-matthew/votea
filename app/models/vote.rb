class Vote < ActiveRecord::Base
	belongs_to :user
	belongs_to :candidate
	validates :user_id, :uniqueness => { scope: [:candidate],
    :message => "Users may only write one vote per candidate" }
end
