class Raindrops
  def self.convert(input)
    prime_array = []
    x = 2
    while x <= input
      prime_array.push(x) if (input % x).zero?
      x += 1
    end
    string_build(prime_array, input)
  end

  def self.string_build(prime_array, input)
    rain_sound = ''
    prime_array.select do |elem|
      case elem
      when 3 then rain_sound += "Pling"
      when 5 then rain_sound += "Plang"
      when 7 then rain_sound += "Plong"
      end
    end
    rain_sound.empty? ? input.to_s : rain_sound
  end
end
