class Complement
  def self.of_dna(input)
    res = ''
    input.each_char do |x|
      case x
      when 'C' then res += 'G'
      when 'G' then res += 'C'
      when 'T' then res += 'A'
      when 'A' then res += 'U'
      else break res = ''
      end
    end
    res
  end
end
