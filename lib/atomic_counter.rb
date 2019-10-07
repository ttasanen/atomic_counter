require "atomic_counter/version"
require "atomic_counter/counter"

module AtomicCounter
  def self.new(start = 0)
    AtomicCounter::Counter.new(start)
  end
end
