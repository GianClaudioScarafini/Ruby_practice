# frozen_string_literal: true

require 'demo'
# this is a TDD Test Driven Development for the circle_area

describe 'the `Circle` class' do
  it 'shouldreturn a number' do
    expect(circle_area(0)).to be_a Numeric
  end
  it 'should retunr 3.14 (π) if the radius is 1' do
    expect(circle_area(1)).to eq Math::PI
  end
  it 'should return 0 if the radius is negative' do
    expect(circle_area(-1)).to eq(0)
  end
end
