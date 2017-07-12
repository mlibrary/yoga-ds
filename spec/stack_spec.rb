# frozen_string_literal: true

require 'stack'

RSpec.describe 'Stack' do
  let(:stack) { Stack.new }

  describe '#initialize' do
    subject { stack }
    it { expect(subject).to_not be_nil }
  end

  describe '#push' do
    context 'new stack push nil' do

      before do
        stack.push(nil)
      end
      subject { stack.size }
      it { expect(subject).to be 0 }
    end
  end

  describe '#pop' do
    context 'new stack pop nil' do
      subject { stack.pop }
      it { expect(subject).to be nil }
    end
  end

  describe '#size' do
    context 'new stack has size zero' do
      subject { stack.size }
      it { expect(subject).to be 0 }
    end
  end
end
