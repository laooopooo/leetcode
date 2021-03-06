require 'minitest/autorun'
require '../maximal_rectangle'

describe 'maximal_rectangle_in_line(line)' do
  it 'should pass test 1' do
    largest_rectangle_area([2,1,5,6,2,3]).must_equal(10)
  end

  it 'should pass test 2 empty array' do
    largest_rectangle_area([]).must_equal(0)
  end

  it 'should pass test 3' do
    largest_rectangle_area([1]).must_equal(1)
  end

  it 'should pass test 4' do
    largest_rectangle_area([1,2,3,4]).must_equal(6)
  end

  it 'should pass test 5' do
    largest_rectangle_area([9,0]).must_equal(9)
  end

  it 'should pass test 6' do
    largest_rectangle_area([8,9,0]).must_equal(16)
  end

  it 'should pass test 7' do
    largest_rectangle_area([2,1,2]).must_equal(3)
  end

  it 'should pass test 8' do
    largest_rectangle_area([2,0,1,0,1,0]).must_equal(2)
  end
end

describe 'maximal_rectangle(matrix)' do
  it 'should work 1' do
    matrix = [
      ['1','0','0','0','0'],
      ['1','0','1','1','0'],
      ['1','0','1','1','1'],
    ]

    area = 4
    maximal_rectangle(matrix).must_equal(area)
  end

  it 'should work 2' do
    matrix = [
      ['1','0','0','0','0'],
      ['1','0','1','1','1'],
      ['1','0','1','1','1'],
    ]

    area = 6
    maximal_rectangle(matrix).must_equal(area)
  end
end
