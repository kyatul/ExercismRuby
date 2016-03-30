# Ecercism Ruby - Secret Handshake
class SecretHandshake
  def initialize(data)
    @data = data
  end

  def commands
    @result = []
    return @result if invalid?

    if @data & 1 != 0
      @result.push('wink')
    end
    if @data & 2 != 0
      @result.push('double blink')
    end
    if @data & 4 != 0
      @result.push('close your eyes')
    end
    if @data & 8 != 0
      @result.push('jump')
    end
    if @data & 16 != 0
      @result.reverse!
    end
    @result
  end

  def invalid?
    @data.to_s.match(/[0-9]*/).to_s.empty?
  end
end
