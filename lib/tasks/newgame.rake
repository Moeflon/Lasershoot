namespace :game do
  task :new => :environment do
    game = Game.new
    game.code = rand(1..999)
    game.save
  end

  task :round => :environment do
    game = Game.last
    game.players.each do |p|
      if p.code != game.code
        p.alive = false
        p.save
      end
    end

    game.code = rand(1..999)
    game.save
  end

  task :poll => :environment do
    while true
      if Time.now.to_i >= Game.last.updated_at.to_i + 120
        game = Game.last
        game.players.each do |p|
          if p.code != game.code
            p.alive = false
            p.save
          end
        end

        game.code = rand(1..999)
        game.save
      end
    end
  end
end
