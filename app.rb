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
    @count = $game.count
    if @points2 <= 0 || @points1 <= 0
      redirect('/winner')
    end
    erb(:play)
  end

  get '/winner' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    @points1 = $game.player1.hitpoints
    @points2 = $game.player2.hitpoints
    erb(:winner)
  end

  post '/attack_player2' do
    $game.player2.hitpoints > 0
    $game.attack_player2
    $game.switch_turn
    redirect('/play')
  end

  post '/attack_player1' do
    $game.player1.hitpoints > 0
    $game.attack_player1
    $game.switch_turn
    redirect('/play')
  end


  post '/poison_player1' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    $game.poison_player2
    $game.switch_turn
    redirect('/play')
  end

  post '/poison_player2' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    $game.poison_player1
    $game.switch_turn
    redirect('/play')
  end
end
