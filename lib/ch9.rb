class Stack
  def initialize
    @data = []
  end

  def push(value)
    @data << value
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end
end

class Linter
  def initialize
    @stack = Stack.new
  end

  def lint(text)
    text.each_char do |char|
      next unless [['{', '}', '[', ']', '(', ')']].include?(char)

      if opener?(char)
        @stack.push(char)
      elsif closer?(char)
        brace = @stack.pop
        return "#{char} doesn't have opener." if brace.nil?
        return "#{char} does not match!" if braces_match?(brace, char)
      end
    end
    residual = @stack.read
    residual.nil? ? true : "#{residual} doesn't have a closer."
  end

  private

  def opener?(brace)
    ['{', '[', '('].include?(brace)
  end

  def closer?(brace)
    ['}', ']', ')'].include?(brace)
  end

  def braces_match?(opener, closer)
    closer == { '{' => '}', '[' => ']', '(' => ')' }[opener]
  end
end
