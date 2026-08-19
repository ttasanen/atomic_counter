module AtomicCounter
  class Counter
    def current
      @mutex.synchronize do
        @current
      end
    end

    def initialize(start = 0)
      @current = start
      @initial = start
      @mutex = Mutex.new
    end

    def increment(by = 1)
      @mutex.synchronize do
        @current += by
      end
    end

    def decrement(by = 1)
      @mutex.synchronize do
        @current -= by
      end
    end

    def reset
      @mutex.synchronize do
        local_value = @current
        @current = @initial
        local_value
      end
    end
  end
end
