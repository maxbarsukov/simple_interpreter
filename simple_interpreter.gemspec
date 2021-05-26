# frozen_string_literal: true

require_relative "lib/simple_interpreter/version"

Gem::Specification.new do |spec|
  spec.name          = "simple_interpreter"
  spec.version       = SimpleInterpreter::VERSION
  spec.authors       = ["maxbarsukov"]
  spec.email         = ["maximbarsukov@bk.ru"]

  spec.summary       = "Simple programming language and interpreter."
  spec.description   = "A simple language designed to learn how to create interpreters."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["source_code_uri"] = "https://github.com/maxbarsukov/simple_interpreter"
  spec.metadata["changelog_uri"] = "https://github.com/maxbarsukov/simple_interpreter/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
