require_relative '../lib/source'
require_relative '../lib/item'

describe Source do
  before(:each) do
    @source = Source.new('Thriller')
  end

  it 'shows instance of Source class' do
    expect(@source).to be_instance_of Source
  end

  it 'should return an empty array' do
    expect(@source.items).to be == []
  end
end
