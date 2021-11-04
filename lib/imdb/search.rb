# frozen_string_literal: true

module Imdb
  class Search
    attr_reader :options, :query

    def initialize(options = nil)
      raise StandardError.new("Empty search options") if options === nil || options === {}

      @options = options
      @query = build_query
    end

    def build_query
      query = "https://www.imdb.com/find?q=#{@options[:query]}&s=tt"

      if @options[:exact_match]
        query += "&exact=true"
      end

      query
    end
  end
end
