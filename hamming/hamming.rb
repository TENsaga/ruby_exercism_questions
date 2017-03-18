module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(a, b)
    raise ArgumentError if a.length != b.length
    a.split("").select.with_index.count { |x, y| x != b.split("")[y] } 
  end
end