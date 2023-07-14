require 'rails_helper'

RSpec.describe Api::BooksController, type: :controller do
  describe 'GET #index' do
    let!(:library) { Library.create(name: 'Library A') }
    let!(:book1) { Book.create(title: 'Book 1', available: true, library: library) }
    let!(:book2) { Book.create(title: 'Book 2', available: false, library: library) }
    let!(:user) { User.create(name: 'Peter Parker') }
    let!(:book_checkout) { BookCheckout.create(user: user, book: book2) }

    it 'returns JSON with library name and book information' do
      get :index, params: { library_id: library.id }, format: :json

      expect(response).to have_http_status(:success)

      response_data = JSON.parse(response.body)
      expect(response_data['library_name']).to eq(library.name)

      books = response_data['books']
      expect(books.size).to eq(2)

      book1_response = books.find { |book| book['title'] == book1.title }
      expect(book1_response['available']).to be_truthy
      expect(book1_response['checked_out_by']).to be_nil

      book2_response = books.find { |book| book['title'] == book2.title }
      expect(book2_response['available']).to be_falsey
      expect(book2_response['checked_out_by']).to eq(user.name)
    end
  end
end
