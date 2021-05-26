require_relative 'token'
require_relative 'token_type'
require_relative 'token_types_list'

require_relative 'ast/statements_node'
require_relative 'ast/expression_node'
require_relative 'ast/number_node'
require_relative 'ast/variable_node'
require_relative 'ast/bin_operation_node'
require_relative 'ast/unar_operation_node'

class Parser
  attr_accessor :tokens,
                :position,
                :scope

  def initialize(tokens)
    @tokens = tokens
    @position = 0
    @scope = {}
  end

  def parse_code
    root = StatementsNode.new
    while @position < @tokens.size
      code_string_node = parse_expression
      require_token TokenTypesList::TOKEN_TYPES['SEMICOLON']
      root.add_node code_string_node
    end

    root
  end

  def parse_expression
    unless match(TokenTypesList::TOKEN_TYPES['VARIABLE'])
      print_node = parse_print
      return print_node
    end

    @position -= 1
    variable_node = parse_variable_or_number
    assign_operator = match(TokenTypesList::TOKEN_TYPES['ASSIGN'])

    if assign_operator
      right_formula_node = parse_formula
      binary_node = BinOperationNode.new(assign_operator, variable_node, right_formula_node)
      return binary_node
    end

    raise "After the variable, an assignment statement is expected at the position #{@position}"
  end

  def parse_print
  end

  def parse_variable_or_number
  end

  def parse_formula
  end

  def require_token(*expected)
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
