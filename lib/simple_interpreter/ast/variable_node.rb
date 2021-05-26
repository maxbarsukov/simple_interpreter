require_relative 'expression_node'

class VariableNode < ExpressionNode
  attr_accessor :variable

  def initialize(variable)
    @variable = variable
  end
end
