class CommentsController < ApplicationController


    def new
      @comment = Comment.new
    end

    def index

    end

    def create
      @comment = Comment.create(params_comment)
      redirect_to gossip_path(params[:gossip_id])

    end

    def edit
      @comment = Comment.find(params[:id])
    end

    def show


    end

    def update
      @params_comment_update = params.require(:comment).permit(:anonymous_commentor, :body)
      @comment = Comment.find(params[:id])
      @comment.update(@params_comment_update)

    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to gossip_path(@comment.gossip_id)
    end

    def params_comment
      params.permit(:anonymous_commentor, :body, :gossip_id)
    end
end
