# frozen_string_literal: true

require 'stack'

RSpec.describe 'Stack' do
  # let(:input) { double("input") }
  let(:stack) { Stack.new }

  describe '#initialize' do
    subject { stack }
    it { expect(subject).to_not be_nil }
  end

  # describe '#valid?' do
  #   context 'empty string' do
  #     let(:input) { '' }
  #     subject { isbn.valid? }
  #     it { expect(subject).to be false }
  #   end
  # end
end
