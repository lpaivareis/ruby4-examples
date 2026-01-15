class AppPayment
  def initialize
    @box = Ruby::Box.new
  end

  def call
    payment_response(1)
    7.times { puts '' }
    payment_response(2)
  end

  private
  attr_reader :box

  def payment_response(version)
    box.require "./lib/payments/payment_v#{version}"

    puts "Version #{version}:"
    puts "------------------------------------------------------"
    puts box::Payment.processor 1000.0
    puts "------------------------------------------------------"
  end
end

3.times { puts '' }
puts AppPayment.new.call
3.times { puts '' }