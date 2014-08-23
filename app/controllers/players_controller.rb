class PlayersController < ApplicationController
  def rb
  	@players = Player.all.order(AvgRank: :asc)
  end

  def wr
  	@players = Player.where("Position = 'WR' and Taken = 0").order(AvgRank: :asc)

  end

  def qb
  	@players = Player.where("Position = 'QB' and Taken = 0").order(AvgRank: :asc)

  end

  def draft
  	id = params[:id]

  	player = Player.find(id)
  	player.Taken = 1

  	player.save
  end
end
