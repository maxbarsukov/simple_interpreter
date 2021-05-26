require_relative 'token'
require_relative 'token_types_list'

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
    while next_token; end

    @token_list.filter do |token|
      token.type.name != TokenTypesList::TOKEN_TYPES['SPACE'].name
    end
  end

  def next_token
    return false if @position >= @code.size

    token_types = TokenTypesList::TOKEN_TYPES.values

    token_types.each do |token_type|
      regex = Regexp.new('^' << token_type.regex)
      result = @code[position..].scan(regex)

      unless result.nil? || result.empty? || result[0].nil? || result[0].empty?
        token = Token.new(token_type, result[0], @position)
        @position += result[0].size
        @token_list << token
        return true
      end
    end
    raise "Script error on position #{@position}"
  end
end
