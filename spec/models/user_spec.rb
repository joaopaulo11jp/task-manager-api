require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  #O let funciona de forma LAZY, só será montado a partir do primeiro chamado
  # será criado um método 'user' que retornará as informações
  #Usa-se let! para que o objeto seja criado assim que bater na linha, não seria mais LAZY...

  it { expect(user).to respond_to :email }

  context 'when name is blank' do
    #context agrupa os testes
    before { user.name = " " }
    #before será executado antes de cada teste do contexto
    it { expect(user).not_to be_valid }

  end

  context 'when name is nil' do
    before { user.name = nil }
    
    it { expect(user).not_to be_valid }
    
  end

  
end
