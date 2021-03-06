class Coordinator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :course

  validates :nome, presence: true, length: { in: 3 .. 50 }
  validates :matricula, presence: true, uniqueness: true
end
