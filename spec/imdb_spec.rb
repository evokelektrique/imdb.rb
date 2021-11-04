# frozen_string_literal: true

RSpec.describe Imdb do
  it "has a version number" do
    expect(Imdb::VERSION).not_to be nil
  end
end


RSpec.describe Imdb::Search do
  before do
    @options = { query: "Batman" }
  end

  it "Build query" do
    search = Imdb::Search.new(@options)
    expect(search).to have_attributes(query: "https://www.imdb.com/find?q=Batman&s=tt")
  end
end
