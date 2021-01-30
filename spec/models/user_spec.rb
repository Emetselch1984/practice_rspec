require 'rails_helper'

RSpec.describe User, type: :model do
  it "userの検証" do
    user = create(:user)
    expect(user).to be_valid
  end
  it "重複するemailの検証" do
    user = create(:user)
    user2= build(:user,email: user.email)
    expect(user2).not_to be_valid
  end

end
