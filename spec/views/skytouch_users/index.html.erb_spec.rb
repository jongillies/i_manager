require 'rails_helper'

RSpec.describe "skytouch_users/index", type: :view do
  before(:each) do
    assign(:skytouch_users, [
      SkytouchUser.create!(
        :uid => "Uid",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email"
      ),
      SkytouchUser.create!(
        :uid => "Uid",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of skytouch_users" do
    render
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
