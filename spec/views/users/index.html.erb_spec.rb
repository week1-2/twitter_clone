require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :user_name => "User Name",
        :bio => "MyText",
        :location => "Location",
        :email => "Email",
        :password => "Password"
      ),
      User.create!(
        :name => "Name",
        :user_name => "User Name",
        :bio => "MyText",
        :location => "Location",
        :email => "Email",
        :password => "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
