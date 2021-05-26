class Token
  attr_accessor :type, :text, :position

  def initialize(type, text, position)
    @type = type
    @text = text
    @position = position
  end
end
