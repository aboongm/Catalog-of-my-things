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

  #   it 'should add the item to add_item method' do
  #     item = Item.new(name: 'name', publish_date: '2022-10-10', archived: true)
  #     @source.add_item(item)
  #     expect(@source.items).to include(item)
  #   end

  #   it 'should add the item to add_item method' do
  #     item = Item.new(name: 'name', publish_date: '2022-10-10', archived: true)
  #     @source.add_item(item)
  #     expect(item.source).to eql @source
  #   end
end
