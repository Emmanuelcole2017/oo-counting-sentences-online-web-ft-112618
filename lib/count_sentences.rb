require 'pry'

class String

  def sentence?
    #binding.pry
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences

    if(self.length != 0)
      self.split('.').collect {|element|
        # binding.pry
        if element.split('!')
          element.split('!')
        end
      }.flatten.count

    else
      0
    end
  end
end
