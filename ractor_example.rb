def ractor_example(enum)
  ports = enum.map do |item|
    p = Ractor::Port.new
    Ractor.new(p, item) do |p, item|
      p << "Olá Mundo em #{Time.now}"
    end
    p
  end

  while !ports.empty?
    p, result = Ractor.select(*ports)
    puts "#{p}: #{result}"
    ports.delete p
  end
end

ractor_example(1..5)