require 'pry'

class String

  def sentence?
    self.include?('.')
  end

  def question?
    self.include?('?')
  end

  def exclamation?
    self.include?('!')
  end


  def count_sentences
    #first we are splitting our sentence up into an array. Then using the delete_if method to make sure that there isn't a word in our array that isn't less that 1 letter
    self.split(/\.|\?|\!/).delete_if {|word| word.length < 1}.length
  end

end
