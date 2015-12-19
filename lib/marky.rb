require 'marky_markov'

class PaulGrahamQuote
  def initialize
    @markov = MarkyMarkov::Dictionary.new('bernie_trump_dictionary') # Saves/opens dictionary.mmd
    @prng   = Random.new
    @markov.parse_file "#{Rails.root}/paul_graham.txt"
  end

  def gen_quote(sentence_count = @prng.rand(1..5))
    @markov.generate_n_sentences sentence_count
  end
end
