require 'pry'

class String

  def sentence?
    #binding.pry
    split = self.split("")
    split[length-1] == "."
  end

  def question?
    split = self.split("")
    split[length-1] == "?"
  end

  def exclamation?
    split = self.split("")
    split[length-1] == "!"
  end

  def count_sentences
    # period = []
    # sentence_count = 0
    # split = self.split(" ")
    # binding.pry
    # return split.length
    return self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end