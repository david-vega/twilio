require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      nickname: 'MyString',
      email: 'MyString@test.com',
      phone_number: '+524567891234',
      password: 'MyString'
    ))
  end

  it "renders the edit user form" do
    render

    assert_select 'form[action=?][method=?]', user_path(@user), 'post' do
      assert_select 'input#user_nickname[name=?]', 'user[nickname]'
      assert_select 'input#user_email[name=?]', 'user[email]'
      assert_select 'input#user_phone_number[name=?]', 'user[phone_number]'
      assert_select 'input#user_password[name=?]', 'user[password]'
    end
  end
end
