require_relative 'expression_node'

class UnarOperationNode < ExpressionNode
  attr_accessor :operator,
                :operand

  def initialize(operator, operand)
    @operator = operator
    @operand = operand
  end
end

