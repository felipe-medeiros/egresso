class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :course
  belongs_to :conclusion

  has_many :contacts

  accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true

  validates :nome, presence: true
  validates :matricula, presence: true
end
