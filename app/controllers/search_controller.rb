class SearchController < ApplicationController
  def search
    @book = Book.new
    if params[:content].present?
      @books = Book.where('category LIKE ?', "%#{params[:content]}%")
    else
      @books = Book.none
    end
  end
end
