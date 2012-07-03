require 'spec_helper'

describe DateTime do
  describe ".to_stime" do
    it "should parse out the time" do
      DateTime.now.to_stime.should == DateTime.now.strftime("%I:%M:%S")
    end
  end
end
