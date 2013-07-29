require_relative './spec_helper'

describe User do
  it "can register" do
    @user = User.create email: 'foo@a.com', password: '1234'
    expect(@user).to_not be nil
  end
end