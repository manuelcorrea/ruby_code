require 'rspec'

describe "Ho Ho Ho" do
  it "should write Ho Ho Ho!" do
    Test.assert_equals(ho(), "Ho!")
    Test.assert_equals(ho(ho()), "Ho Ho!")
    Test.assert_equals(ho(ho(ho())), "Ho Ho Ho!")
  end
end