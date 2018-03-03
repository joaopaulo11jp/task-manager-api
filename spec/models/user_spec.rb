require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  #O let funciona de forma LAZY, só será montado a partir do primeiro chamado
  # será criado um método 'user' que retornará as informações
  #Usa-se let! para que o objeto seja criado assim que bater na linha, não seria mais LAZY...

  it { expect(user).to respond_to :email }
  
  #pending "add some examples to (or delete) #{__FILE__}"

  #before { @user = build(:user) }

  #it { expect(@user).to respond_to(:email) }
  #it { expect(@user).to respond_to(:name) } Vai falhar
  #it { expect(@user).to respond_to(:password) }
  #it { expect(@user).to respond_to(:password_confirmation) }
  #it { expect(@user).to be_valid }

  #Usando subject:

  #it { expect(subject).to respond_to(:email) }
  #it { expect(subject).to respond_to(:name) } Vai falhar
  #it { expect(subject).to respond_to(:password) }
  #it { expect(subject).to respond_to(:password_confirmation) }
  #it { expect(subject).to be_valid } Vai falhar, pois o subject equivale à User.new... Ou seja: user vazio

  #Refazendo com shoulda-matchers... is_expected equivale à expect(subject).

  #it { is_expected.to respond_to(:email) }
  #it { is_expected.to respond_to(:password) }
  #it { is_expected.to respond_to :password_confirmation }

  
end
