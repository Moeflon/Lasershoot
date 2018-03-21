class PlayerController < ApplicationController
  def index
  end

  def code
    if !player.alive
      render text: "u ded"
      return
    end
    if request.post?
      player = current_user
      if player.alive
        player.code = params[:code]
        player.save
      end
    end
  end

  def current
    render text: Game.last.code
  end

  def start
    render text: Game.last.updated_at.to_time.to_i
  end

  def login
    if Game.last.started
      render text: "Game already started"
      return
    end

    if current_user?
      redirect_to code_path
    end

    if request.post?
      player = Game.last.players.create(name: params[:name], alive: true, code: "0")
      user_login(player)
      redirect_to code_path
    end
  end
end
