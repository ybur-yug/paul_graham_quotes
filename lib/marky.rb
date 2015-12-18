require 'marky_markov'
markov = MarkyMarkov::Dictionary.new('bernie_trump_dictionary') # Saves/opens dictionary.mmd
markov.parse_file "#{Rails.root}/paul_graham.txt"

250.times do 
  puts (markov.generate_n_sentences 1) + "\n\n\n"
end

Quote.new(body: markov.generate_n_sentences(Random.new.rand(4)))
