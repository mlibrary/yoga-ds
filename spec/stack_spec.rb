require 'stack'

RSpec.describe Stack do
  context "#size" do
    it "has a size of 0 when new" do
      expect(Stack.new.size).to eq 0
    end
  end

  context "#push" do
    let(:stack) { Stack.new }
    it "adds 1 to the stack" do
      stack.push('thing')
      expect(stack.size).to eq 1
    end
  end

  context "#pop" do
    let(:stack) { Stack.new }
    it "removes 1 from the stack" do
      stack.push('thing1')
      stack.push('thing2')
      expect(stack.size).to eq 2

      thing = stack.pop
      
      expect(stack.size).to eq 1
      expect(thing).to eq 'thing2'
    end
  end
end
