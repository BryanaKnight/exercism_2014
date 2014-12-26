class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(comparison_words)
    comparison_words.select do |cw|
      compare_words(cw) unless cw.downcase == word.downcase
    end
  end

  def compare_words(comparison_word)
    comparison_word.downcase.chars.sort == word.downcase.chars.sort
  end

end
