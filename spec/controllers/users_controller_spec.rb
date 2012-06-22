require 'spec_helper'

describe UsersController do
  before :each do
    @user = FactoryGirl.create :user
  end

  describe '.list' do
    it 'lists all valid users' do
      get :index
      response.body.should == [ @user ].to_json
    end
  end
end
