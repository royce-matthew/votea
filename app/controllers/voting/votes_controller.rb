module Voting
  class VotesController < ApplicationController
    before_action :authenticate_user!
    def index
      @positions = Position.all
      @candidates = Candidate.all 
      @votes = Vote.all
      render "voting/votes/index.html.erb"
    end

    def edit
      @post = Post.find(params[:id])
    end

    def update
      @post = Post.find(params[:id])

      if @post.update(post_params())
        redirect_to admin_post_path(@post.id)
      else
        render "admin/posts/edit.html.erb"
      end
    end

    def new
      @votes= Vote.all
      @pos = params[:id]
      @vote = Vote.new
      render "voting/votes/new.html.erb"
    end

    def create
      @vote = current_user.votes.build(vote_params())

      if @vote.save
        redirect_to voting_votes_path(@vote.id)
      else
        render "voting/votes/new.html.erb"
      end
    end


    def vote_params

      params.require(:vote).permit!
    end
  end
end