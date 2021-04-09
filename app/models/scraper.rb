# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

class Scraper
  attr_reader :genre_list

  def initialize
    genre_url = 'https://reference.yourdictionary.com/books-literature/different-types-of-books.html'
    @genre_list = []
    page = Nokogiri::HTML(open(genre_url))
    rows = page.css('tr')
    rows.each do |row|
      genre = row.css('td')[0].text
      @genre_list << genre
    end
    @genre_list = @genre_list.sample(10)
  end
end
