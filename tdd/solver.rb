class Solver
  def self.factorial(n)
    if n == 0
      1
    elsif n < 0
      raise ArgumentError, 'number has to be positive or 0'
    else
      (1..n).reduce(:*)
    end
  end

  def self.reverse(word)
    word.reverse
  end

  def self.fizzbuzz(n)
    n % 3 == 0
  "fizz"
end


end
