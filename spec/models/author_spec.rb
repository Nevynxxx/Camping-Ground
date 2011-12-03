require 'spec_helper'

describe Author do
  before(:each) do
    @auth = Factory.create(:author)
  end

  it "should be valid" do
    @auth.should be_valid
  end

  it "should find an author given the full name" do
    a = Author.find_by_name("FName SName")
    a.should == @auth
  end

  it "should be invalid with no first name" do
    @auth.firstname = nil
    @auth.should be_invalid
  end

  it "should be invalid with no last name" do
    @auth.lastname = nil
    @auth.should be_invalid
  end

  it "should return the full name rather than class id" do
    @auth.to_s.should =="FName SName"
  end
end
