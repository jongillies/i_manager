require 'rails_helper'

RSpec.describe "skytouch_users/new", type: :view do
  before(:each) do
    assign(:skytouch_user, SkytouchUser.new(
      :uid => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new skytouch_user form" do
    render

    assert_select "form[action=?][method=?]", skytouch_users_path, "post" do

      assert_select "input#skytouch_user_uid[name=?]", "skytouch_user[uid]"

      assert_select "input#skytouch_user_first_name[name=?]", "skytouch_user[first_name]"

      assert_select "input#skytouch_user_last_name[name=?]", "skytouch_user[last_name]"

      assert_select "input#skytouch_user_email[name=?]", "skytouch_user[email]"
    end
  end
end
