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
end
