require_relative 'token'
require_relative 'token_type'
require_relative 'token_types_list'

class Parser
  attr_accessor :tokens,
                :position,
                :scope

  def initialize(tokens)
    @tokens = tokens
    @position = 0
    @scope = {}
  end

  def require(*expected)
    token = match(*expected)
    unless token
      raise "#{expected[0].name} expected at position #{@position}, but not found"
    end
    token
  end

  def match(*expected)
    if @position < @tokens.length
      current_token = @tokens[@position]
      if expected.find{ |type| type.name == current_token.type.name }
        @position += 1
        return current_token
      end
    end
    nil
  end
end
