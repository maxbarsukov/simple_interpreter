require_relative 'token_type'

module TokenTypesList
  NUMBER = TokenType.new('NUMBER', '[0-9]*')
  VARIABLE = TokenType.new('VARIABLE', '[a-z]*')
  SEMICOLON = TokenType.new('SEMICOLON', ';')
  SPACE = TokenType.new('SPACE', '[ \\n\\t\\r]')
  ASSIGN = TokenType.new('ASSIGN', 'ASSIGN')
end
