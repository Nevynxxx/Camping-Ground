require 'spec_helper'

describe Scenario do
  before(:each) do
    @scenario = Factory(:scenario)
  end

  it "should be valid" do
    @scenario.should be_valid
  end

  it "should be invalid without a name" do
    @scenario.name = nil
    @scenario.should be_invalid
  end

  it "should be invalid without a number" do
    @scenario.number = nil
    @scenario.should be_invalid
  end

  it "should be invalid without an author" do
    @scenario.author_id = nil
    @scenario.should be_invalid
  end

  it "should be invalid without a season" do
    @scenario.season = nil
    @scenario.should be_invalid
  end

  it { should belong_to :author }

  it "should return a properly formatted number" do
    @scenario.no.should == "#3-01"
  end

  it "should return a properly formatted number for season 2" do
    @scenario.season = 2
    @scenario.no.should == "#2-01"
  end
end
