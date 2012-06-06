require 'spec_helper'

describe UsersController do
  describe '.list' do
    it 'lists all valid users' do
      user = FactoryGirl.create :user
      get :index
      response.body.should == [ user ].to_json
    end
  end

  describe '.create' do
    it 'creates users'
    it 'only allows administrators to create users'
  end
end
