require 'spec_helper'

describe 'routing to users' do
  it 'routes a list of users' do
    { :get => '/users' }.should route_to(
      :controller => 'users',
      :action => 'index'
    )
  end
end
