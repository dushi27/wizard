require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "Email",
        :password => "Password",
        :name => "Name",
        :school => "School",
        :twitter => "Twitter",
        :linkedin => "Linkedin"
      ),
      User.create!(
        :email => "Email",
        :password => "Password",
        :name => "Name",
        :school => "School",
        :twitter => "Twitter",
        :linkedin => "Linkedin"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin".to_s, :count => 2
  end
end
