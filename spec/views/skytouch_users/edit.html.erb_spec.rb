require 'rails_helper'

RSpec.describe "skytouch_users/edit", type: :view do
  before(:each) do
    @skytouch_user = assign(:skytouch_user, SkytouchUser.create!(
      :uid => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit skytouch_user form" do
    render

    assert_select "form[action=?][method=?]", skytouch_user_path(@skytouch_user), "post" do

      assert_select "input#skytouch_user_uid[name=?]", "skytouch_user[uid]"

      assert_select "input#skytouch_user_first_name[name=?]", "skytouch_user[first_name]"

      assert_select "input#skytouch_user_last_name[name=?]", "skytouch_user[last_name]"

      assert_select "input#skytouch_user_email[name=?]", "skytouch_user[email]"
    end
  end
end
