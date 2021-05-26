require_relative 'expression_node'

class NumberNode < ExpressionNode
  attr_accessor :number

  def initialize(number)
    @number = number
  end
end
