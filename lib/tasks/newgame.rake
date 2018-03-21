namespace :game do
  task :new => :environment do
    game = Game.new
    game.save
  end
end
