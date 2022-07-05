require_relative '../lib/movie'

describe Movie do
  before(:each) do
    @movie = Movie.new(publish_date: '2022-07-05', silent: false, archived: false, name: 'Test4')
  end

  it 'Show instances of Movie class' do
    expect(@movie).to be_instance_of Movie
  end

  it 'Shows inheritance from Person class' do
    expect(@movie).to be_kind_of Item
  end

  it 'verifies archived return false' do
    expect(@movie.archived).to be false
  end

  it 'Verifies silent return true' do
    expect(@movie.silent).to be false
  end
end
