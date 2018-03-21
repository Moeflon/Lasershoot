class PlayerController < ApplicationController
  def index

  end

  def code

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
