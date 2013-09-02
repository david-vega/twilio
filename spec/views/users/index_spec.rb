require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        nickname: 'Nickname',
        email: 'Email',
        phone_number: '+524567891234',
        password: 'Password'
      ),
      stub_model(User,
        nickname: 'Nickname',
        email: 'Email',
        phone_number: '+524567891234',
        password: 'Password'
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select 'tr>td', :text => 'Nickname'.to_s, :count => 2
    assert_select 'tr>td', :text => 'Email'.to_s, :count => 2
    assert_select 'tr>td', :text => '+524567891234'.to_s, :count => 2
  end
end
