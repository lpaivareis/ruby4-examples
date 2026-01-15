class String
  def polite
    self +'How are you?'.upcase
  end
end

class Greetings
  def self.say_hello(name)
    "Hello #{name}! ".polite
  end
end
