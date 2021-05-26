class TokenType
  attr_accessor :name, :regex

  def initialize(name, regex)
    @name = name
    @regex = regex
  end
end
