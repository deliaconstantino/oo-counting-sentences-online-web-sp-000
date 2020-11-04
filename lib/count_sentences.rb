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
    binding.pry
    self.split(/(\.|\?|!){1,}/)
    binding.pry
  end
end

hello = "hello"
hello.count_sentences
