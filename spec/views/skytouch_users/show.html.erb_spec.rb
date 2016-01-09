require 'rails_helper'

RSpec.describe "skytouch_users/show", type: :view do
  before(:each) do
    @skytouch_user = assign(:skytouch_user, SkytouchUser.create!(
      :uid => "Uid",
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
  end
end
