require 'spec_helper'

describe Stack do
  it { is_expected.not_to be(nil) }

  describe '#push' do
    it 'can push' do
      expect {subject.push(1) }.not_to raise_exception
    end
  end

  describe '#pop' do
    it 'can pop' do
      expect {subject.pop }.not_to raise_exception
    end

    it 'retrieves data that was pushed' do
       num = Random.new.rand
       subject.push(num)
       expect( subject.pop).to be(num)
    end
    it 'retrieives data that was pushed arbitarily' do
      #values = 1..(2+rand(6)).map do
       # rand
      #end
      #values.each { subject.push(rand) }
       num = Random.new.rand
       subject.push(num)
       subject.push(1)
       subject.pop
       expect( subject.pop).to be(num)
    end

    it 'returns nil when empty' do
      expect(subject.pop).to be(nil)
    end
  end

  describe '#size' do
    it 'can get size' do
      expect {subject.size }.not_to raise_exception
    end

    it 'has size zero when instantiated' do
      expect(subject.size).to be(0)
    end

    it 'gets larger when pushed' do
      subject.push(1)
      expect(subject.size).to be(1)
    end

    it 'gets smaller when popped' do
      subject.push(1)
      subject.pop
      expect(subject.size).to be(0)
    end

    it 'has a nonnegative size' do
      subject.pop
      expect(subject.size).to be(0)
    end
  end
end
