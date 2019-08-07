class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @new_gossip = Gossip.new
  end


  def create
    @new_gossip = Gossip.create(:user => User.all.sample, :title => params[:title], :content => params[:content]) # avec xxx qui sont les données obtenues à partir du formulaire

    if @new_gossip.save # essaie de sauvegarder en base @gossip
    redirect_to root_path# si ça marche, il redirige vers la page d'index du site
    else
    render new_gossip_path# sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end