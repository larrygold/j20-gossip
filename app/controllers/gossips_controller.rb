class GossipsController < ApplicationController

  def new
    @gossip = Gossip.new
  end

  def index
    @gossips = Gossip.all
  end

  def create
    @gossip = Gossip.create(params_gossip)
    redirect_to gossip_path(@gossip.id)
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def show
    @gossip = Gossip.find(params[:id])
    @comments = Comment.all
    @comment = Comment.new
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(params_gossip)
    redirect_to gossip_path(@gossip.id)
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

  def params_gossip
    params.require(:gossip).permit(:anonymous_author, :content)
  end

end
