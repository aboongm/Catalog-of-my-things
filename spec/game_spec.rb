require 'date'
require_relative '../lib/games'

describe Game do
  game = Game.new('22', '2022-06-01', '1960-05-12')
  context '... this class...' do
    it 'should initialize with multiplayer, last_played_date and published_date' do
      expect(game.multiplayer).not_to be_nil
      expect(game.last_played_at).to eq('2022-06-01')
      expect(game.publish_date).to eq '1960-05-12'
    end
    it 'should detect the game multiplayer' do
      expect(game.multiplayer).to eq '22'
    end

    it 'should detect the Game publish_date' do
      expect(game.publish_date).to eq '1960-05-12'
    end
    it 'should test weather game object is instance of Game class' do
      expect(game).to be_a Game
    end
    it 'should return false on archive' do
      expect(game.archived).to eq false
    end
  end
end
