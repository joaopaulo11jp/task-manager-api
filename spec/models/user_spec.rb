require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  #before { @user = build(:user) }

  #it { expect(@user).to respond_to(:email) }
  #it { expect(@user).to respond_to(:name) } Vai falhar
  #it { expect(@user).to respond_to(:password) }
  #it { expect(@user).to respond_to(:password_confirmation) }
  #it { expect(@user).to be_valid }

  #Usando subject:

  it { expect(subject).to respond_to(:email) }
  #it { expect(subject).to respond_to(:name) } Vai falhar
  it { expect(subject).to respond_to(:password) }
  it { expect(subject).to respond_to(:password_confirmation) }
  #it { expect(subject).to be_valid } Vai falhar, pois o subject equivale à User.new

  
end
