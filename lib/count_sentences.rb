require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[.?!]+/).count
  end
end

word = ("The weather outside is frightful.")
puts word.sentence?
word1 = ("The weather outside is frightful?")
puts word1.question?
word2 = ("The weather outside is frightful!")
puts word2.exclamation?
word4 = ("!?.")
word5 = ("The, weather, outside, is, great,")
puts word4.count_sentences
puts word5.count_sentences

#binding.pry