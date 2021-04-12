# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def search
    if params[:categ].present?
      @books = Book.where("title LIKE ?", "%#{params[:search_term]}%").where("category_id LIKE ?", "#{params[:categ]}")
    else
      @books = Book.where("title LIKE ?", "%#{params[:search_term]}%")
    end
  end
end
