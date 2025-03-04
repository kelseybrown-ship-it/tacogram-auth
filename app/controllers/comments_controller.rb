class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment["contact_id"] = params["contact_id"]
    @comment["note"] = params["note"]
    # assign logged-in user as comments's user (aka "salesperson")
    @comment["user_id"] = session["user_id"]
    @comment.save
    redirect_to "/posts/#{@comment["contact_id"]}"
  end

end
end
