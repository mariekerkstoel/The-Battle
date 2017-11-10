require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions



  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.game(params[:player1], params[:player2])
    redirect '/play'
  end

  before do
    @game = Game.access_game
  end

  get '/play' do
    @player1 = @game.player1.name
    @player2 = @game.player2.name
    @points1 = @game.player1.hitpoints
    @points2 = @game.player2.hitpoints
    @count = @game.count

    erb(:play)
  end

  post '/attack' do
    @game.attack_and_switch
    redirect('/play')
  end

  post '/poison' do
    @player1 = @game.player1.name
    @player2 = @game.player2.name
    @game.poison_and_switch
    redirect('/play')
  end
end
