require_relative 'token'

class Lexer
  attr_accessor :code,
                :position,
                :token_list

  def initialize(code)
    @code = code
    @position = 0
    @token_list = []
  end

  def analyze
    while next_token
      # some analyze here
    end
    token_list
  end

  def next_token

  end
end
