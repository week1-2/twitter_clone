require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :user_name => "MyString",
      :bio => "MyText",
      :location => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[user_name]"

      assert_select "textarea[name=?]", "user[bio]"

      assert_select "input[name=?]", "user[location]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[password]"
    end
  end
end
