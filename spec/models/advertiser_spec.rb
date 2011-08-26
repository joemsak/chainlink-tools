require File.dirname(__FILE__) + '/../spec_helper'

describe Advertiser do
  it "should be valid" do
    Advertiser.new.should be_valid
  end
end
