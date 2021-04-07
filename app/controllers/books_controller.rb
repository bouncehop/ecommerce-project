# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Books.all
  end

  def show
    @book = Book.find(params[:id])
  end
end
