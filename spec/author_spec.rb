require 'date'
require_relative '../lib/author'
require_relative '../lib/game'

describe Author do
  author = Author.new('William', 'Shakespear')
  Game.new('22', '2022-06-01', '1960-05-12')
  context '... this class...' do
    it 'should initialize with first_name and last_name' do
      expect(author.first_name).not_to be_nil
      expect(author.first_name).to be_a(String)
      expect(author.last_name).to eq 'Shakespear'
    end

    it 'should test weather author object is instance of Author class' do
      expect(author).to be_a Author

      # it 'should add author item object to Author items array' do
      # author.add_item(game)
      # expect(author.items[0]).to eq game
    end
  end
end
