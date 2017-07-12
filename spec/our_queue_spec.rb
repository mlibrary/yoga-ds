require 'spec_helper'

describe OurQueue do
  it { is_expected.not_to be(nil) }

  describe '#enqueue' do
    it 'can enqueue' do
      expect {subject.enqueue(1) }.not_to raise_exception
    end
  end

  describe '#dequeue' do
    it 'can dequeue' do
      expect {subject.dequeue }.not_to raise_exception
    end

    it 'retrieves data that was enqueued' do
       num = Random.new.rand
       subject.enqueue(num)
       expect( subject.dequeue).to be(num)
    end
    it 'retrieives data that was enqueue arbitrarily' do
       num = Random.new.rand
       subject.enqueue(1)
       subject.enqueue(num)
       subject.dequeue
       expect( subject.dequeue).to be(num)
    end

    it 'returns nil when empty' do
      expect(subject.dequeue).to be(nil)
    end
  end

  describe '#size' do
    it 'can get size' do
      expect {subject.size }.not_to raise_exception
    end

    it 'has size zero when instantiated' do
      expect(subject.size).to be(0)
    end

    it 'gets larger when enqueued' do
      subject.enqueue(1)
      expect(subject.size).to be(1)
    end

    it 'gets smaller when dequeued' do
      subject.enqueue(1)
      subject.dequeue
      expect(subject.size).to be(0)
    end

    it 'has a nonnegative size' do
      subject.dequeue
      expect(subject.size).to be(0)
    end
  end
end
