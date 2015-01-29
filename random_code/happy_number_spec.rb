require 'rspec'

require_relative 'happy_number'
describe 'Happy Number' do

  it 'should be happy number' do
    number = 82
    hnumber = HappyNumber.new
    expect(hnumber.is_happy number).to be true
  end

  begin
    it 'should not be happy number' do
      number = 20
      hnumber = HappyNumber.new
      expect(hnumber.is_happy number).to be false
    end
  end
end