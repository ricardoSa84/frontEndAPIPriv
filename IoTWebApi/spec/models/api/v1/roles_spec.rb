require File.dirname(__FILE__) + '/../spec_helper'

describe Api::V1::Roles do
  it "should be valid" do
    Api::V1::Roles.new.should be_valid
  end
end
