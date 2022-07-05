require 'spec_helper'

describe Genre do
  before(:all) do
    @jazz = Genre.new('jazz')
    @album = MusicAlbum.new('2000-12-06', false)
    @jazz.add_item(@album)
    @app = App.new
  end
  context 'test class properties' do
    it 'check if genre is an instance' do
      expect(@jazz).to be_an_instance_of Genre
    end

    it 'confirm name of genre' do
      expect(@jazz.name).to eql('jazz')
    end

    it 'add item (music album)' do
      expect(@jazz.items).to include(@album)
    end

    context 'test app methods for genre' do
      it 'add a new genre to list' do
        @app.add_genre(@jazz)
        expect(@app.genres).to include('jazz')
      end
    end
  end
end
