##
# Lib works with hash container and support fifo rule over it
class Trace
  attr_reader :values

  def initialize(container = '', limit = 3)
    @container = container
    @limit     = limit
    # container[:key] should be array
    @values    = container[:last]
    @values    = [] if @values.blank?
    if values.is_a? String
      @values = values.split('&').map{ |x| x.to_i }
    end
  end

  def add(value)
    unless @values.include? value
      @values.unshift value
      @values.slice!(@limit+1)
      @container[:last] = @values
    end
  end
end