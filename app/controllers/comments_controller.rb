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

    end

    def show


    end

    def update


    end

    def destroy


    end

    def params_comment
      params.permit(:anonymous_commentor, :body, :gossip_id)
    end
end
