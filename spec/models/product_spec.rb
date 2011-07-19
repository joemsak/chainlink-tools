require 'spec_helper'

describe "Products" do
  context "validation" do
    it "requires a name" do
      Factory.build(:product, :name => "").should_not be_valid
    end
  end
end
