require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do 
    @user = build(:user)
  end

  it do
    expect(@user).to respond_to(:email)
  end

  #it { expect(@user).to respond_to(:name) } Vai falhar
  it { expect(@user).to respond_to(:password) }
  it { expect(@user).to respond_to(:password_confirmation) }
  it { expect(@user).to be_valid }
  
end
