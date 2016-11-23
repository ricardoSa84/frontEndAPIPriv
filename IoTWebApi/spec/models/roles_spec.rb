require File.dirname(__FILE__) + '/../spec_helper'

describe Roles do
  it "should be valid" do
    Roles.new.should be_valid
  end
end
