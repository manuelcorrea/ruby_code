require 'rspec'
require_relative '../codewars/roman-decoder'

describe 'My behaviour' do

  it 'should return 1' do
    solution('I').should == 1
  end

  it 'should return 2' do
    solution('II').should == 2
  end

  it 'should return 3' do
    solution('III').should == 3
  end

  it 'should return 4' do
    solution('IV').should == 4
  end

  it 'should return 5' do
    solution('V').should == 5
  end

  it 'should return 6' do
    solution('VI').should == 6
  end

  it 'should return 8' do
    solution('VIII').should == 8
  end

  it 'should return 10' do
    solution('X').should == 10
  end

  it 'should return 9' do
    solution('IX').should == 9
  end

  it 'should return 18' do
    solution('XIV').should == 14
  end

  it 'should return 15' do
    solution('XV').should == 15
  end

  it 'should return 16' do
    solution('XVI').should == 16
  end

  it 'should return 18' do
    solution('XVIII').should == 18
  end

  it 'should return 19' do
    solution('XIX').should == 19
  end

  it 'should return 21' do
    solution('XXI').should == 21
  end

  it 'should return 2008' do
    solution('MMVIII').should == 2008
  end

  it 'should return 1666' do
    solution('MDCLXVI').should == 1666
  end



  # it 'should return 10' do
  #   solution('X').should == 10
  # end

  # it 'should return 6' do
  #   solution('VI').should == 6
  # end

  # it 'should return 36' do
  #   solution('XXXVI').should == 36
  # end
  #
  # it 'should return 4' do
  #   solution('IV').should == 4
  # end
  #
  # it 'should return 24' do
  #   solution('IV').should == 24
  # end

end