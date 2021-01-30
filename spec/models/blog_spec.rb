require 'rails_helper'

RSpec.describe Blog, type: :model do
  it "blogの作成" do
    blog = create(:blog)
    expect(blog).to be_valid
  end
  it "userが消去されるとblogも消去される" do
    user = create(:user)
    user.blogs.create(title: "foo",body: "bar")
    expect{user.destroy}.to change{Blog.count}.by(-1)
  end
end
