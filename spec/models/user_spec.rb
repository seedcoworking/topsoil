require 'spec_helper'

describe User do
  before :each do
    @subject = FactoryGirl.create :user
  end

  it 'validates the uniqueness of email' do
    product = FactoryGirl.build :user
    product.should_not be_valid
    product.errors[:email].should include 'has already been taken'
  end

  it 'validates the case insensitivity of email' do
    product = FactoryGirl.build :user
    product.email = @subject.email.upcase
    product.should_not be_valid
    product.errors[:email].should include 'has already been taken'
  end

  it 'validates a valid email address' do
    product = FactoryGirl.build :user, :email => 'invalid@example'
    product.should_not be_valid
    product.errors[:email].should include 'is invalid'
  end

  describe '.to_json' do
    it 'contains the card information' do
      @subject.to_json.should have_json_path "card"
    end

    it 'does not contain a repetative card_id' do
      @subject.to_json.should_not have_json_path "card_id"
    end

    it 'contains the plan information' do
      @subject.to_json.should have_json_path "plan"
    end

    it 'contains the plans schedule ' do
      @subject.to_json.should have_json_path "plan/schedule"
    end

    it 'does not contain a repetative plan_id' do
      @subject.to_json.should_not have_json_path "plan_id"
    end
  end
end
