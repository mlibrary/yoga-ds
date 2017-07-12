require 'queue'

RSpec.describe Queue do
  context "#size" do
    it "has a size of 0 when new" do
      expect(Queue.new.size).to eq 0
    end
  end

  context "#enqueue" do
    let(:queue) { Queue.new }

    it "adds a thing to the queue" do
      queue.enqueue('thing')
    end
  end

  context "#dequeue" do
    let(:queue) { Queue.new }

    it "removes 1 from the queue" do
      queue.enqueue('thing1')
      queue.enqueue('thing2')
      expect(queue.size).to eq 2

      thing = queue.dequeue

      expect(queue.size).to eq 1
      expect(thing).to eq 'thing1'
    end
  end
end
