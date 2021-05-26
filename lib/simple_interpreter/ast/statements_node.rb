require_relative 'expression_node'

class StatementsNode < ExpressionNode
  attr_accessor :code_strings

  def add_node(node)
    @code_strings << node
  end
end