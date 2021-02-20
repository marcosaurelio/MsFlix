require 'rails_helper'

describe User do
  it "is valid if name is filled" do
    user = User.new(email: 'marcos@teste.com.br', password: '123456', name: 'Marcos')
    expect(user).to be_valid
  end
  it "is not valid if name is not filled" do
    user = User.new(email: 'marcos@teste.com.br', password: '123456')
    expect(user).to_not be_valid
  end
end
