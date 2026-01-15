class App
  attr_reader :version, :box

  def initialize(version = 1)
    @version = version
    @box = Ruby::Box.new
  end

  def call
    box.require "./lib/greetings/greetings-#{version}.0.0"

    hello
  end

  private

  def hello
    puts "================Version #{version}=================="
    puts box::Greetings.say_hello "Lucas"
    puts "==================end======================"
  end
end


3.times { puts '' }
puts App.new(version = 1).call
puts App.new(version = 2).call
puts App.new(version = 3).call
puts App.new.call
3.times { puts '' }