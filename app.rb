require 'sinatra/base'
require './lib/player.rb'

  class Battle < Sinatra::Base

  enable :sessions

    get '/' do
      erb(:index)
    end

    post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
      redirect "/play"
    end

    get '/play' do
      @player1 = $player1.name
      @player2 = $player2.name
      @points1 = $player1.player_points
      @points2 = $player2.player_points
      erb(:play)
    end

    get '/attack' do
      @player1 = $player1.name
      @player2 = $player2.name
      $player1.attack($player2)
      erb(:attack)
    end

  end
