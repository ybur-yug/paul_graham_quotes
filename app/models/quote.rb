require 'marky'

class Quote < ActiveRecord::Base
  def self.markov_quote
    Quote.create(body: PaulGrahamQuote.new.gen_quote)
  end

  def self.generate_n_markov_quotes number_of_quotes
    number_of_quotes.times { self.markov_quote }
  end
end
