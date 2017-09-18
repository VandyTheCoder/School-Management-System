class Student < ApplicationRecord

  belongs_to :parent

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :image, StudentUploader

  GENDER = ['Male', 'Female']
end
