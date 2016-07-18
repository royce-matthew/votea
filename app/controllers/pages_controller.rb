class PagesController < ApplicationController
	def index
		@votes = Vote.all
		@candidates = Candidate.all
		@positions = Position.all
		render "pages/index.html.erb"

	end
	def profile
		 before_action :authenticate_user!
		@votes = Vote.all
		@candidates = Candidate.all
		@positions = Position.all
		render "pages/index.html.erb"

	end
end