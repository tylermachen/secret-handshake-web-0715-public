class SecretHandshake
  HANDSHAKE = {
    10000 => "reverse",
    1000 => "jump",
    100 => "close your eyes",
    10 => "double blink",
    1 => "wink"
  }

  attr_accessor :num

  def initialize(num)
    @num = num.to_i
  end

  def commands
    result = []
    rev = false
    HANDSHAKE.each do |bin, command|
      if (@num - bin >= 1 && @num < 10000) || @num == bin
        result << command
        @num -= bin
      elsif @num > 10000
        @num -= 10000
        rev = true
      end
    end
    rev == true ? result : result.reverse
  end
end

# Binary Handshake Rules
# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.
