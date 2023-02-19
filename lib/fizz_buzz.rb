class FizzBuzz
  FIZZ = "Fizz".freeze
  BUZZ = "Buzz".freeze

  def perform(input)
    num = input_to_num(input.strip)
    num && num_to_fizz_buzz(num)
  end

  private

  def input_to_num(input)
    return nil if input.nil? || input !~ /^-?\d+$/
    input.to_i
  end

  def num_to_fizz_buzz(num)
    fizz = (num % 3).zero? ? FIZZ : nil
    buzz = (num % 5).zero? ? BUZZ : nil
    if fizz || buzz
      "#{fizz}#{buzz}!"
    else
      "#{num}!"
    end
  end
end
