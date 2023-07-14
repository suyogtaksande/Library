class Api::BooksController < ApplicationController
  def index
    library = Library.find(params[:library_id])
    books = library.books.includes(:users)
  
    render json: {
      library_name: library.name,
      books: serialize_books(books)
    }
  end
  
  private
  
  def serialize_books(books)
    books.map do |book|
      {
        title: book.title,
        available: book.available?,
        checked_out_by: book.users.first&.name
      }
    end
  end
end
