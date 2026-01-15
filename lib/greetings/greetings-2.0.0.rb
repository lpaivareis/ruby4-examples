class String
  def non_polite
    self + "I don't want to talk to you".upcase + "!"
  end
end

class Greetings
  def self.say_hello(name)
    "Hello #{name}! ".non_polite
  end
end
