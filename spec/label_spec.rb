require_relative '../lib/label'
require_relative '../lib/book'

describe Label do
  context 'test the attributes and the method in the Label class' do
    label = Label.new('The Hobbit', 'green')
    it 'should return the correct title' do
      expect(label.title).to eq('The Hobbit')
    end

    it 'should return the correct publisher' do
      expect(label.color).to eq('green')
    end

    it "should add an item to the label's items array" do
        book = Book.new('The Hobbit', 'George Allen & Unwin (UK)', 'good', '1937')
        label.add_item(book)
        expect(label.items).to include(book)
        end
  end
end
