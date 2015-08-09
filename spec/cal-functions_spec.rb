require 'rspec'
require_relative '../codewars/cal-functions'

describe 'My behaviour' do

  it 'one is 1' do
     one().should == 1
  end

  it 'one plus one == 2' do
    one(plus(one())).should == 2
  end
end