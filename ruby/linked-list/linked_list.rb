class Deque
  attr_accessor :list

  def initialize
    @list = ""
  end

  def push(node)
    if @list.empty?
      @list << "#{node}"
    else
      @list << ",#{node}"
    end
  end

  def pop
    @list[-1]
  end

end
