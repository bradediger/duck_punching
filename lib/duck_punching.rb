require 'duck_punching/version'
require 'linguistics'
require 'wordnet'

class DuckPunching
  def initialize
    Linguistics.use(:en)
    @lexicon = WordNet::Lexicon.new # use wordnet-defaultdb

    @num_nouns = WordNet::Synset.nouns.count
    @num_verbs = WordNet::Synset.verbs.count
  end

  def random_noun
    synset = WordNet::Synset.nouns.limit(1, rand(@num_nouns)).first
    synset.words.sample.lemma
  end

  def random_participle
    synset = WordNet::Synset.verbs.limit(1, rand(@num_verbs)).first
    word = synset.words.sample.lemma
    word.en.present_participle
  end

  def call
    "#{random_noun} #{random_participle}"
  end
end

