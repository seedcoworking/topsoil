require 'spec_helper'

describe User do
  before :all do
    @subject = FactoryGirl.create :user
  end

  it 'validates the uniqueness of email' do
    product = FactoryGirl.build :user
    product.should_not be_valid
  end
end
