RSpec.describe AtomicCounter do
  it "has a version number" do
    expect(AtomicCounter::VERSION).not_to be nil
  end

  it "can be initialized by the shorthand" do
    counter = AtomicCounter.new(5)

    expect(counter.current).to eq(5)
  end

  it "has a default value" do
    counter = AtomicCounter::Counter.new

    expect(counter.current).to eq(0)
  end

  it "increments counter by default value" do
    counter = AtomicCounter::Counter.new

    counter.increment

    expect(counter.current).to eq(1)
  end

  it "increments counter by value" do
    counter = AtomicCounter::Counter.new

    counter.increment(2)

    expect(counter.current).to eq(2)
  end

  it "decreases counter by default value" do
    counter = AtomicCounter::Counter.new(1)

    counter.decrement

    expect(counter.current).to eq(0)
  end

  it "decreases counter by value" do
    counter = AtomicCounter::Counter.new(1)

    counter.decrement(1)

    expect(counter.current).to eq(0)
  end
end
