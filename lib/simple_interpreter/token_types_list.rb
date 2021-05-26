require_relative 'token_type'

module TokenTypesList
  TOKEN_TYPES = {
    'NUMBER'    => TokenType.new('NUMBER', '[0-9]*'),
    'VARIABLE'  => TokenType.new('VARIABLE', '[a-z]*'),
    'SEMICOLON' => TokenType.new('SEMICOLON', ';'),
    'SPACE'     => TokenType.new('SPACE', '[ \\n\\t\\r]'),

    'ASSIGN'    => TokenType.new('ASSIGN', 'ASSIGN'),
    'LOG'       => TokenType.new('LOG', 'LOG'),

    'PLUS'      => TokenType.new('PLUS', 'PLUS'),
    'MINUS'     => TokenType.new('MINUS', 'MINUS'),

    'LPAR'      => TokenType.new('LPAR', '\\('),
    'RPAR'      => TokenType.new('RPAR', '\\)'),
  }
end
