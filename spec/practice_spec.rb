require 'rails_helper'

RSpec.describe "いろいろな検証" do
  it "配列に1が含まれている事を確認する" do
    array = [1,2,3]
    expect(array).to include(1)
  end
  it "配列に1と3が含まれている事を確認する" do
    array = [1,2,3]
    expect(array).to include(1,3)
  end
  it "配列に4は含まれていないを確認する" do
    array = [1,2,3]
    expect(array).not_to include(4)
  end
end
