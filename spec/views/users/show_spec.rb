require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      nickname: 'Nickname',
      email: 'Email',
      phone_number: '+524567891234',
      password: 'Password'
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should match(/Nickname/)
    rendered.should match(/Email/)
    rendered.should match(/524567891234/)
  end
end
