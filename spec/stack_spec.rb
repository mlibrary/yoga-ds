require "stack"

RSpec.describe "Stack" do
  before(:each) do
    @stack = Stack.new
  end

  it "has a size of 0" do
    expect(@stack.size).to be 0
  end

  context "the string 'hello' is pushed" do
    before(:each) do
      @stack.push "hello"
    end

    it "has a size of 1" do
      expect(@stack.size).to be 1
    end

    context "pop() is called" do
      before(:each) do
        @value = @stack.pop
      end

      it "the value is 'hello'" do
        expect(@value).to eq "hello"
      end

      it "has a size of 0" do
        expect(@stack.size).to be 0
      end
    end
  end

  context "the number 8 is pushed" do
    before(:each) do
      @stack.push 8
    end

    it "has a size of 1" do
      expect(@stack.size).to be 1
    end

    context "pop() is called" do
      before(:each) do
        @value = @stack.pop
      end

      it "the value is 8" do
        expect(@value).to eq 8
      end

      it "has a size of 0" do
        expect(@stack.size).to be 0
      end
    end

    context "the string 'josh' is also pushed" do
      before(:each) do
        @stack.push 'josh'
      end

      it "has a size of 2" do
        expect(@stack.size).to be 2
      end

      it "has two different pop values" do
        expect(@stack.pop).to eq 'josh'
        expect(@stack.pop).to eq 8
      end
    end
  end
end
