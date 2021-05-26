require_relative 'expression_node'

class BinOperationNode < ExpressionNode
  attr_accessor :operator,
                :left_node,
                :right_node

  def initialize(operator, left_node, right_node)
    @operator = operator
    @left_node = left_node
    @right_node = right_node
  end
end
