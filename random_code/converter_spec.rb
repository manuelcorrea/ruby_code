require 'rspec'

require_relative 'converter'
describe 'Converter' do

  before (:each) do
    @converter = Converter.new
  end

  it 'should convert interger to roman' do
    number = 27
    roman = @converter.convert_to_roman(number)
    expected = "XXVII"
    roman.should eq expected
  end
end