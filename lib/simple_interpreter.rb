# frozen_string_literal: true

require_relative "simple_interpreter/version"
require_relative 'simple_interpreter/lexer'


module SimpleInterpreter
end


code = 'sum ASSIGN 5 MINUS 9;'

lexer = Lexer.new(code)

lexer.analyze

puts lexer.token_list.map(&:type).map(&:name)
