require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player1], params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    @points1 = $game.player1.hitpoints
    @points2 = $game.player2.hitpoints
    erb(:play)
  end

  post '/attack' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    $game.player2.hitpoints > 0
    $game.attack
    redirect('/play')
  end

  post '/poison' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    $game.poison
    redirect('/play')
  end
end
