class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :name
  # attr_accessor cria um atributo não persistido

  validates_presence_of :name
  # atributos não persistidos também podem ter validação


end
