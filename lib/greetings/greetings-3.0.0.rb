class String
    PERIODS = {
      6...12  => 'morning',
      12...18 => 'afternoon',
      18...22 => 'evening'
    }.freeze

  def period_of_day
    hour = Time.now.getlocal('-03:00').hour

    period = PERIODS.find { |range, _| range.cover?(hour) }&.last || 'night'

    return "#{self} good #{period}!".upcase
  end
end

class Greetings
  def self.say_hello(name)
    "Hello #{name},".period_of_day
  end
end
