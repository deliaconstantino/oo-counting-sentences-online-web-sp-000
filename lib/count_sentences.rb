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
    array = []
    self.split(/(\.|\?|!){1,}/).each do |string|
      if string.include?("?") || string.include?(".") || string.include?("!") == false
        binding.pry
        array << string
      end
    end
    array.count

  end
end

hello = "hello"
hello.count_sentences
