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
    array = []
    self.split(/(\.|\?|!){1,}/).each do |string|
      unless string.include?("?") || string.include?(".") || string.include?("!")
        array << string
      end
    end
    array.count
  end
end
