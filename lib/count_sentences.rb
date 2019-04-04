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
  return self.split(/\?|\.|!/).size 
  # splits the string at every ending punctuation into an array and then gets the size of the array
  end
  # binding.pry
end