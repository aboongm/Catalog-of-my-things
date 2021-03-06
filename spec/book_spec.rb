require_relative '../lib/book'

describe Book do
  context 'test the methods in the Book class' do
    book = Book.new('The Hobbit', 'George Allen & Unwin (UK)', 'good', '1937')
    it 'should return the correct title' do
      expect(book.title).to eq('The Hobbit')
    end

    it 'should return the correct publisher' do
      expect(book.publisher).to eq('George Allen & Unwin (UK)')
    end

    it 'should return the correct cover state' do
      expect(book.cover_state).to eq('good')
    end

    it 'should return the correct publish date' do
      expect(book.publish_date).to eq('1937')
    end

    it 'test if can_be_archived? returns true' do
      expect(book.move_to_archive).to eq(true)
    end

    it 'test if can_be_archived? returns true' do
      book.move_to_archive
      expect(book.archived).to eq(true)
    end
  end
end
