require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      nickname: 'MyString',
      email: 'MyString',
      phone_number: '+524567891234',
      password: 'MyString'
    ).as_new_record)
  end

  it "renders new user form" do
    render

    assert_select 'form[action=?][method=?]', users_path, 'post' do
      assert_select 'input#user_nickname[name=?]', 'user[nickname]'
      assert_select 'input#user_email[name=?]', 'user[email]'
      assert_select 'input#user_phone_number[name=?]', 'user[phone_number]'
      assert_select 'input#user_password[name=?]', 'user[password]'
    end
  end
end
