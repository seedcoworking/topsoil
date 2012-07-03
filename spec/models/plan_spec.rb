require 'spec_helper'

describe Plan do
  before :each do
    @subject = FactoryGirl.create :medium
  end

  describe '.to_json' do
    it 'contains the schedule information' do
      @subject.to_json.should have_json_path "schedule"
    end
  end
end
