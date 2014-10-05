require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :email => "MyString",
      :password => "MyString",
      :name => "MyString",
      :school => "MyString",
      :twitter => "MyString",
      :linkedin => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_school[name=?]", "user[school]"

      assert_select "input#user_twitter[name=?]", "user[twitter]"

      assert_select "input#user_linkedin[name=?]", "user[linkedin]"
    end
  end
end
